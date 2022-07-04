import time, logging
from PySide2.QtCore import QObject, Signal, Slot, QThread
from .modules import charts, database


class Handler(QObject):
    """ Управление модулями приложения (Обработчик)"""

    # Сигналы  ( Сигналы потоков )
    programmData = Signal(list)
    chartData = Signal(list)
    closeApplication = Signal()


    # Поток построения графиков
    def chart_worker_signal(self, data):
        self.chartData.emit(data)

    def create_chart_stream(self):
        self.chart_thread = QThread()
        self.chart_worker = charts.ChartWorker()
        self.chart_worker.moveToThread(self.chart_thread)
        self.chart_thread.started.connect(self.chart_worker.doWork)
        self.chart_worker.chart.connect(self.chart_worker_signal)
        self.chart_worker.finished.connect(self.chart_thread.quit)
        self.chart_thread.start()

    def destroy_chart_stream(self):
        self.chart_worker.stop()
        self.chart_thread.quit()




    @Slot(list)
    def save_programm(self, data):
        print(f"CREATE REFLOW DATA { data }")




    # Остановка и запуск приложения
    @Slot()
    def running_application(self):
        """ Запуск необходимых сервисов при старте """

        self.create_chart_stream()


    @Slot()
    def close_application(self):
        """ Ожидаем закрытия потоков сервисов и закрываем приложение """
        # Останавливаем потоки
        self.destroy_chart_stream()

        # Ждём пока поток будет завершён
        while self.chart_thread.isRunning():

            # Проверяем остановлен ли поток
            print(f"RUNNING FIRST THREAD: { self.chart_thread.isFinished() }")

            print("Останавливаем First Worker")
            time.sleep(1)

        # Закрываем приложение, если все потоки остановились
        self.closeApplication.emit()

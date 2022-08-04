import time, logging
from PySide2.QtCore import QObject, Signal, Slot, QThread
from .modules import charts
import json
from .modules.database import (
    select,
    select_all_programm, 
    create
)

from .modules.demo import emulators


# json_formatted_str = json.dumps(list_data[0], ensure_ascii=False, indent=4)
# print('\nDATA:\n', json_formatted_str, '\n')



class Handler(QObject):
    """ Управление модулями приложения (Обработчик)"""

    # Сигналы  ( Сигналы потоков )
    programmData = Signal(list)
    chartData = Signal(list)
    closeApplication = Signal()





#########################################################################################################
#########################################################################################################
#########################################################################################################
    # Костыль для списка программ и выбранной программы
    selected_programm = {}


    weldingProgramms = Signal(list)
    weldingProgramm = Signal(list)

    # Event for control buttons
    showRunButton = Signal(bool)
    showStopButton = Signal(bool)
    showExitButton = Signal(bool)


    @Slot()
    def get_welding_programms(self):
        """ Получение программ сварки """
        programm = select_all_programm()
        self.weldingProgramms.emit(programm)

    
    @Slot(int)
    def select_welding_programm(self, id):
        data = []
        data.append(select(id)["programm_programmmodel"])   # Ходим в бузу за выбранной программой
        self.showRunButton.emit(True)

        self.weldingProgramm.emit(data)


#########################################################################################################
    # ACTION SIGNALS
    bl0 = Signal(bool)
    bl1 = Signal(bool)
    bl2 = Signal(bool)
    bl3 = Signal(bool)
    nd0 = Signal(int)
    nd1 = Signal(int)
    nd2 = Signal(int)
    nd3 = Signal(int)



#########################################################################################################
#########################################################################################################
#########################################################################################################



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


    # !Поток выполнения сварки
    def welding_data_processing(self, data):
        json_formatted_str = json.dumps(data, ensure_ascii=False, indent=4)
        print('\nDATA:\n', json_formatted_str, '\n')

    def create_welding_stream(self):
        self.welding_thread = QThread()
        self.welding_worker = emulators.WeldingWorker()
        self.welding_worker.moveToThread(self.welding_thread)
        self.welding_thread.started.connect(self.welding_worker.doWork)
        self.welding_worker.welding.connect(self.welding_data_processing)
        self.welding_worker.finished.connect(self.welding_thread.quit)
        self.welding_thread.start()

    def destroy_welding_stream(self):
        self.welding_worker.stop()
        self.welding_thread.quit()



    programmCreatedId = Signal(int)
    @Slot(list)
    def save_programm(self, data):
        json_formatted_str = json.dumps(data[0], ensure_ascii=False, indent=4)
        print('\nDATA:\n', json_formatted_str, '\n')
        create(data[0])




    # Остановка и запуск приложения
    @Slot()
    def running_application(self):
        """ Запуск необходимых сервисов при старте """

        self.showStopButton.emit(True)
        self.showRunButton.emit(False)

        self.create_welding_stream()
        # self.create_chart_stream()


    @Slot()
    def close_application(self):
        """ Ожидаем закрытия потоков сервисов и закрываем приложение """
        # Останавливаем потоки
        self.destroy_welding_stream()

        # Ждём пока поток будет завершён
        while self.welding_thread.isRunning():

            # Проверяем остановлен ли поток
            print(f"RUNNING FIRST THREAD: { self.chart_thread.isFinished() }")

            print("Останавливаем First Worker")
            time.sleep(1)


        self.showExitButton.emit(True)
        self.showRunButton.emit(True)
        self.showStopButton.emit(False)
        # Закрываем приложение, если все потоки остановились
        # self.closeApplication.emit()

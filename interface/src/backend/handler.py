import time, logging
from PySide2.QtCore import QObject, Signal, Slot, QThread
from .modules import charts, database


class Handler(QObject):
    """ Управление модулями приложения (Обработчик)"""

    # Сигналы  ( Сигналы потоков )
    weldingProgramms = Signal(list)
    correctorData = Signal(list)
    reflowData = Signal(list)
    diametersData = Signal(list)
    chartData = Signal(list)
    allDataSaved = Signal()


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



    # Слоты
    @Slot()
    def get_welding_programm(self):
        """ Получение программ сварки """
        programm = database.get_welding_programm()
        self.list_programs = programm
        self.weldingProgramms.emit(programm)


    @Slot()
    def assembly_welding_programm(self):
        """ Подготовка новой программы сварки """
        print("Подготовка новой программы сварки")
        self.new_programm = {
            "name": f"Проограмма { len(self.list_programs) + 1 }",
            "description": "Нет описания",
            "min_diameter": 0,
            "max_diameter": 0,
        }




    @Slot(list)
    def save_programm(self, data):
        """ CREATE PROGRAMM """

        print(data)






    @Slot()
    def create_welding_programm(self):
        """ Создание новой программы сварки """

        # Генерируем структуру для новой программы
        self.new_programm["min_diameter"] = self.list_reflow_data[0]['min_diameter']
        self.new_programm["max_diameter"] = self.list_reflow_data[0]['max_diameter']
        self.new_programm["corrector_data"] = self.list_corrector_data[0]
        self.new_programm["reflow_data"] = self.list_reflow_data[0]

        print("НОВАЯ ПРОГРАММА:\n", self.new_programm)


    @Slot(list)
    def create_corrector_data(self, data):
        """ 

        """
        self.list_corrector_data = data
        print(f"CREATE CORRECTOR DATA { data }")


    @Slot()
    def return_corrector_data(self):
        # if self.list_corrector_data:
        #     print(f"RETURN CORRECTOR DATA { self.list_corrector_data }")
        #     self.correctorData.emit(self.list_corrector_data)
        if self.list_corrector_data:
            list_data = []

            for dict_values in self.list_corrector_data[0]['sections']:

                list_data.append(dict_values['c_0'])
                list_data.append(dict_values['c_1'])
                list_data.append(dict_values['c_2'])
                list_data.append(dict_values['c_3'])

            self.correctorData.emit(list_data)


    @Slot(list)
    def create_reflow_data(self, data):
        """ 

        """
        self.list_reflow_data = data
        print(f"CREATE REFLOW DATA { data }")


    @Slot()
    def return_reflow_data(self):
        """ 
        Возращает 40 значений в списке для перезаполнения ячеек 
        по ПОРЯДКУ СЕКЦИЙ
        """
        if self.list_reflow_data:
            list_data = []

            for dict_values in self.list_reflow_data[0]['sections']:

                list_data.append(dict_values['r_0'])
                list_data.append(dict_values['r_1'])
                list_data.append(dict_values['r_2'])
                list_data.append(dict_values['r_3'])

            self.reflowData.emit(list_data)
            self.diametersData.emit(
                [
                    { 
                        "min_diameter": self.list_reflow_data[0]['min_diameter'],
                        "max_diameter": self.list_reflow_data[0]['max_diameter'] 
                        },
                ]
            )


    # Cлоты для манипуляций с программами сварки

    @Slot(int)
    def remove_welding_programm(self, id):
        """ Удаление программы сварки """
        print(f"Удаление программы сварки { id }")
        database.remove_programm(id)
        # sqlite.remove_welding_programm(id)
        # self.get_welding_programm()




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
        self.allDataSaved.emit()

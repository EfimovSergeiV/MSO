import time, logging, os
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
        programms = select_all_programm()
        self.weldingProgramms.emit(programms)

    
    @Slot(int)
    def select_welding_programm(self, id):
        data = []
        programm_data = select(id)
        json_formatted_str = json.dumps(programm_data, ensure_ascii=False, indent=4)
        print('\nProgramm:\n', json_formatted_str, '\n')

        data.append(programm_data["programm_programmmodel"])   # Отправляем на фронт инфу о выбранной программе
        # self.showRunButton.emit(True)
        self.selected_programm = programm_data
        self.weldingProgramm.emit(data)


#########################################################################################################
    # ACTION SIGNALS

    bl0 = Signal(bool)
    bl1 = Signal(bool)
    bl2 = Signal(bool)
    bl3 = Signal(bool)
    bl4 = Signal(bool)
    bl5 = Signal(bool)
    bl6 = Signal(bool)
    bl7 = Signal(bool)
    bl8 = Signal(bool)
    bl9 = Signal(bool)
    bl10 = Signal(bool)
    bl11 = Signal(bool)
    bl12 = Signal(bool)
    bl13 = Signal(bool)
    bl14 = Signal(bool)
    bl15 = Signal(bool)
    bl16 = Signal(bool)
    bl17 = Signal(bool)
    bl18 = Signal(bool)
    bl19 = Signal(bool)
    

    nd0 = Signal(str)
    nd1 = Signal(str)
    nd2 = Signal(str)
    nd3 = Signal(str)
    nd4 = Signal(str)
    nd5 = Signal(str)
    nd6 = Signal(str)
    nd7 = Signal(str)
    nd8 = Signal(str)
    nd9 = Signal(str)
    nd10 = Signal(str)



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
        self.bl0.emit(data["bl_0"])
        self.bl1.emit(data["bl_1"])
        self.bl2.emit(data["bl_2"])
        self.bl3.emit(data["bl_3"])
        self.bl4.emit(data["bl_4"])
        self.bl5.emit(data["bl_5"])
        self.bl6.emit(data["bl_6"])
        self.bl7.emit(data["bl_7"])
        self.bl8.emit(data["bl_8"])
        self.bl9.emit(data["bl_9"])
        self.bl10.emit(data["bl_10"])
        self.bl11.emit(data["bl_11"])
        self.bl12.emit(data["bl_12"])
        self.bl13.emit(data["bl_13"])
        self.bl14.emit(data["bl_14"])
        self.bl15.emit(data["bl_15"])
        self.bl16.emit(data["bl_16"])
        self.bl17.emit(data["bl_17"])
        self.bl18.emit(data["bl_18"])
        self.bl19.emit(data["bl_19"])

        programm = self.selected_programm["programm_programmmodel"]

        self.nd0.emit(data["nd_0"])
        self.nd1.emit(data["nd_1"])
        self.nd2.emit(data["nd_2"])
        self.nd3.emit(str(programm["id"]))
        self.nd4.emit(data["nd_4"])
        self.nd5.emit(data["nd_5"])
        self.nd6.emit(data["nd_6"])
        self.nd7.emit(data["nd_7"])
        self.nd8.emit(data["nd_8"])
        self.nd9.emit(data["nd_9"])
        self.nd10.emit(data["nd_10"])

        chart_data = [
            {"name": "ND 2", "x": int(data["nd_4"]), "y": float(data["nd_2"])},
            {"name": "ND 5", "x": int(data["nd_4"]), "y": float(data["nd_5"])},
        ]
        self.chartData.emit(chart_data)


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

    @Slot()
    def reboot_system(self):
        self.closeApplication.emit()
        os.system('reboot')

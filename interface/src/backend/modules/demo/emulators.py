"""
Пробуем эмулировать работу
"""

from PySide2.QtCore import QObject, Slot, Signal
import time, random


class WeldingWorker(QObject):
    """ Процесс эмуляции работы сварочной программы """

    finished = Signal()
    welding = Signal(dict)

    def __init__(self, parent=None):
        super(WeldingWorker, self).__init__(parent)
        self.__finished = False

    cnt = 40

    @Slot()
    def doWork(self):
        while True:
            if self.__finished:
                break
            time.sleep(0.1)
            data = {
                "bl_0": True if self.cnt % 50 == 0 else False,
                "bl_1": True if self.cnt % 50 == 0 else False,
                "bl_2": True if self.cnt % 100 == 0 else False,
                "bl_3": True if self.cnt % 100 == 0 else False,
                "nd_0": random.randint( 0, 500 ),
                "nd_1": random.randint( 0, 500 ),
                "nd_2": random.randint( 0, 500 ),
                "nd_3": random.randint( 0, 500 ),
            }            

            self.cnt += 1
            self.welding.emit(data)

    def stop(self):
        self.__finished = True
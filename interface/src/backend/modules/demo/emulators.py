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

    cnt = 0
    section = 1

    @Slot()
    def doWork(self):
        while True:
            if self.__finished:
                break
            time.sleep(0.6)
            data = {
                "bl_0": True if self.cnt == 10 else False,
                "bl_1": True if self.cnt == 90 else False,
                "bl_2": True if self.cnt == 13 else False,
                "bl_3": True if self.cnt == 97 else False,

                "bl_4": True if self.cnt in range(20, 80) else False,
                "bl_5": True if self.cnt in range(20, 80) else False,
                "bl_6": True if self.cnt in range(20, 80) else False,
                "bl_7": True if self.cnt in range(20, 80) else False,
                "bl_8": True if self.cnt in range(20, 80) else False,
                "bl_9": True if  self.cnt in range(0, 99) else False, # Готовность
                "bl_10": True if self.cnt in range(20, 80) else False,
                "bl_11": True if self.cnt in range(20, 80) else False,
                "bl_12": True if self.cnt in range(20, 80) else False,
                "bl_13": True if self.cnt in range(70, 80) else False,
                "bl_14": True if self.cnt in range(20, 80) else False,
                "bl_15": True if self.cnt in range(20, 80) else False,
                "bl_16": True if self.cnt in range(20, 80) else False,
                "bl_17": True if self.cnt in range(20, 80) else False,
                "bl_18": True if self.cnt in range(20, 80) else False,
                "bl_19": True if self.cnt in range(20, 80) else False,

                "nd_0": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_1": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_2": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_3": str(4), # Номер программы
                "nd_4": str(self.cnt),
                "nd_5": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_6": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_7": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_8": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
                "nd_9": str(self.section), # Номер участка
                "nd_10": str(random.randint( 0, 90 )) + "." +  str(random.randint(0, 90)) +  str(random.randint(0, 9)),
            }


            self.section = self.section + 1 if self.section < 12 and data["bl_10"] else 1
            self.cnt = self.cnt + 1 if self.cnt < 100 else 0

            self.welding.emit(data)

    def stop(self):
        self.__finished = True
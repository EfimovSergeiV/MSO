from PySide2.QtCore import QObject, Slot, Signal

import time, random, logging


class ChartWorker(QObject):
    """ Поток данных построения таблицы """

    finished = Signal()
    chart = Signal(list)

    def __init__(self, parent=None):
        # super().__init__(parent)
        super(ChartWorker, self).__init__(parent)
        self.__finished = False

    count = 0

    @Slot()
    def doWork(self):
        while True:
            if self.__finished:
                break
            time.sleep(0.5)
            if self.count % 2 == 0:
                data = [
                    {"name": "name 1", "x": self.count, "y": random.randint(60, 80)},
                    {"name": "name 2", "x": self.count, "y": random.randint(40, 80)},
                    {"name": "name 3", "x": self.count, "y": random.randint(10, 50)},
                    {"name": "name 4", "x": self.count, "y": random.randint(60, 100)},
                    {"name": "name 5", "x": self.count, "y": random.randint(120, 160)},
                ]
            else:
                data = [
                    {"name": "name 1", "x": self.count, "y": random.randint(125, 145)},
                    {"name": "name 2", "x": self.count, "y": random.randint(100, 160)},
                ]
            

            self.count += 1
            self.chart.emit(data)

    def stop(self):
        self.__finished = True

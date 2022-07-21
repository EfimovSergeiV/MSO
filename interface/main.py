#!/usr/bin/env python3
# This Python file uses the following encoding: utf-8

import os, sys
from pathlib import Path
from src.backend.handler import *

from PySide2.QtWidgets import QApplication
from PySide2.QtQml import QQmlApplicationEngine


# os.environ["QT_IM_MODULE"] = "qtvirtualkeyboard"

if __name__ == "__main__":
    app = QApplication(sys.argv)
    engine = QQmlApplicationEngine()

    handler = Handler()
    engine.rootContext().setContextProperty("handler", handler)

    engine.load(os.fspath(Path(__file__).resolve().parent / "src/main.qml"))

    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec_())

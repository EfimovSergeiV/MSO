"""
Обработка и запись данных в базу данных\n
Поддержка SQLite и PostgreSQL
"""

import json, psycopg2, sqlite3, datetime, logging
from psycopg2.extras import RealDictCursor
from pathlib import Path
BASE_DIR = Path(__file__).resolve().parent.parent.parent.parent.parent

data = None


def dict_factory(cursor, row):
    """ Преабразуем ответ курсора в словарь """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


def select():
    conn = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
    conn.row_factory = dict_factory
    cursor = conn.cursor()
    
    table, related_field, id = "programm_programmmodel", "id", 60
    response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": related_field, "id": id })
    data = response.fetchone()
    print(table, data)

    for table in ['programm_correctorparammodel', 'programm_reflowparammodel',]:
        related_field, id = "programm_id", 60
        response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": related_field, "id": id })
        data = response.fetchone()
        print(table, data)

    models = {'programm_correctorsectionmodel': 'corrector_id', 'programm_reflowsectionmodel': 'reflow_id'}
    for table in models:
        id = 30 #ID корректора или оплавления
        response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": models[table], "id": id })
        data = response.fetchall()
        print(table, data)

    for table in ['programm_sedimentpressuresensormodel','programm_primaryvoltagesensormodel','programm_preheatingmodel','programm_positionsensormodel','programm_pkpressuremetersensormodel','programm_otherparametersensormodel','programm_oiltemperaturesensormodel','programm_nkpressuremetersensormodel','programm_hydraulicpressuresensormodel','programm_currentsensormodel','programm_burningmodel','programm_clampmodel',]:
        related_field, id = "programm_id", 60
        response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": related_field, "id": id })
        data = response.fetchone()
        print(table, data)

    conn.close()




select()
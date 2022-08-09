"""
Обработка и запись данных в базу данных\n
Поддержка SQLite и PostgreSQL
"""

import json, psycopg2, sqlite3, datetime, logging
from psycopg2.extras import RealDictCursor
from pathlib import Path
BASE_DIR = Path(__file__).resolve().parent.parent.parent.parent.parent

from random import randint


def dict_factory(cursor, row):
    """ Преабразуем ответ курсора в словарь """
    d = {}
    for idx, col in enumerate(cursor.description):
        d[col[0]] = row[idx]
    return d


def select(id):
    """ 
    Выбор программы\n 
    Принимает на вход id программы, и возвращает данные выбранной программы
    """

    conn = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
    conn.row_factory = dict_factory
    cursor = conn.cursor()
    # print(id)

    result = {}
    
    table, related_field, id = "programm_programmmodel", "id", id
    response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": related_field, "id": id })
    data = response.fetchone()
    print(table, data)
    result["programm_programmmodel"] = data

    
    for table in ['programm_correctorparammodel', 'programm_reflowparammodel',]:
        related_field, id = "programm_id", id
        response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": related_field, "id": id })
        data = response.fetchone()
        crunch = data['id']

    models = {'programm_correctorsectionmodel': 'corrector_id', 'programm_reflowsectionmodel': 'reflow_id'}
    for table in models:
        related_id = crunch #ID корректора или оплавления
        response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": models[table], "id": related_id })
        data = response.fetchall()
        # print(table, data)
        result[table] = data

    for table in ['programm_sedimentpressuresensormodel','programm_primaryvoltagesensormodel','programm_preheatingmodel','programm_positionsensormodel','programm_pkpressuremetersensormodel','programm_otherparametersensormodel','programm_oiltemperaturesensormodel','programm_nkpressuremetersensormodel','programm_hydraulicpressuresensormodel','programm_currentsensormodel','programm_burningmodel','programm_clampmodel',]:
        related_field, id = "programm_id", id
        response = cursor.execute("SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s" % { "table": table, "related_field": related_field, "id": id })
        data = response.fetchone()
        # print(table, data)
        result[table] = data

    conn.close()
    return result



def select_all_programm():
    result = []
    conn = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
    conn.row_factory = dict_factory
    cursor = conn.cursor()

    table = "programm_programmmodel"
    response = cursor.execute("SELECT * FROM %(table)s" % { "table": table, })
    result = response.fetchall()

    conn.close()
    return result




def create(data):
    json_formatted_str = json.dumps(data, ensure_ascii=False, indent=4)
    print('\nDATA:\n', json_formatted_str, '\n')

    programm = data.pop("programm_programmmodel")
    programm['updated_at'], programm['created_at'] = [str(dt_now)] * 2    
    # print(f'\n{programm}')

    conn = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
    conn.row_factory = dict_factory
    cursor = conn.cursor()

    table = "programm_programmmodel"
    response = cursor.execute("INSERT INTO %(table)s%(column)s VALUES %(value)s" % { "table": table, "column": tuple(programm.keys()), "value": tuple(programm.values()) })
    programm_id = response.lastrowid

    # Related models
    foreign_keys = {}
    table, column, value = "programm_correctorparammodel", "programm_id", programm_id
    response = cursor.execute("INSERT INTO %(table)s(%(column)s) VALUES (%(value)s)" % { "table": table, "column": column, "value": value })
    foreign_keys['programm_correctorsectionmodel'] = {'corrector_id': response.lastrowid }

    table, column, value = "programm_reflowparammodel", "programm_id", programm_id
    response = cursor.execute("INSERT INTO %(table)s(%(column)s) VALUES (%(value)s)" % { "table": table, "column": column, "value": value })
    foreign_keys['programm_reflowsectionmodel'] = { 'reflow_id': response.lastrowid }


    for model in data:
        
        if type(data[model]) == list:
            for inserted in data[model]:
                inserted[tuple(foreign_keys[model].keys())[0]] = tuple(foreign_keys[model].values())[0]
                response = cursor.execute("INSERT INTO %(table)s%(column)s VALUES %(value)s" % { "table": model, "column": tuple(inserted.keys()), "value": tuple(inserted.values()) })

        else:
            request_data = data[model]
            request_data["programm_id"] = programm_id
            response = cursor.execute("INSERT INTO %(table)s%(column)s VALUES %(value)s" % { "table": model, "column": tuple(data[model].keys()), "value": tuple(data[model].values()) })


    conn.commit()
    conn.close()


def update(id, data=None):
    alter_data = select(id)


    request = f"""UPDATE programm_programmmodel SET {id} WHERE id = {id}"""
    json_formatted_str = json.dumps(alter_data, ensure_ascii=False, indent=4)
    print('\nDATA:\n', json_formatted_str, '\n')



def create_or_update(data=None):
    pass




dt_now = datetime.datetime.now()
diameter = randint(0, 50)

data = {
    # programm_programmmodel
    "programm_programmmodel": {
        "name": f"Программа сварки { diameter } - { diameter + 2 }",
        "min_diameter": diameter,
        "max_diameter": diameter + 2,
        "description": f"Описание программы сварки { diameter }",
    },
    # programm_preheatingmodel
    "programm_preheatingmodel": {
        "ph_0": randint(0, 50),
        "ph_1": randint(0, 50),
        "ph_2": randint(0, 50),
        "ph_3": randint(0, 50),
        "ph_4": randint(0, 50),
        "ph_5": randint(0, 50),
        "ph_6": randint(0, 50),
        "ph_7": randint(0, 50),
        "ph_8": randint(0, 50),
        "ph_9": randint(0, 50),
        "ph_10": randint(0, 50),
        "ph_11": randint(0, 50),
        "ph_12": randint(0, 50),
    },
    # programm_otherparametersensormodel
    "programm_otherparametersensormodel": {
        "oth_0": randint(0, 50),
        "oth_1": randint(0, 50),
        "oth_2": randint(0, 50),
        "oth_3": randint(0, 50),
        "oth_4": randint(0, 50),
        "oth_5": randint(0, 50),
        "oth_6": randint(0, 50),
        "oth_7": randint(0, 50),
        "oth_8": randint(0, 50),
        "oth_9": randint(0, 50),
        "oth_10": randint(0, 50),
        "oth_11": randint(0, 50),
        "oth_12": randint(0, 50),
        "oth_13": randint(0, 50),
        "oth_14": randint(0, 50),
        "oth_15": randint(0, 50),
        "oth_16": randint(0, 50),
        "oth_17": randint(0, 50),
    },
    # programm_primaryvoltagesensormodel
    "programm_primaryvoltagesensormodel": {
        "min_voltage": randint(0, 25),
        "max_voltage": randint(25, 50),
    },
    # programm_oiltemperaturesensormodel
    "programm_oiltemperaturesensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_hydraulicpressuresensormodel
    "programm_hydraulicpressuresensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_nkpressuremetersensormodel
    "programm_nkpressuremetersensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_pkpressuremetersensormodel
    "programm_pkpressuremetersensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_sedimentpressuresensormodel
    "programm_sedimentpressuresensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_primaryvoltagesensormodel
    "programm_primaryvoltagesensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_currentsensormodel
    "programm_currentsensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_positionsensormodel
    "programm_positionsensormodel": {
        "min_value": randint(0, 25),
        "max_value": randint(25, 50),
    },
    # programm_burningmodel
    "programm_burningmodel": {
        "b_0": randint(0, 50),
        "b_1": randint(0, 50),
        "b_2": randint(0, 50),
        "b_3": randint(0, 50),
        "b_4": randint(0, 50),
        "b_5": randint(0, 50),
        "b_6": randint(0, 50),
        "b_7": randint(0, 50),
    },
    # programm_clampmodel
    "programm_clampmodel": {
        "cl_0": randint(0, 50),
        "cl_1": randint(0, 50),
        "cl_2": randint(0, 50),
        "cl_3": randint(0, 50),
        "cl_4": randint(0, 50),
        "cl_5": randint(0, 50),
        "cl_6": randint(0, 50),
    },
    # programm_correctorparammodel
    # "programm_correctorparammodel": {},
    # programm_correctorsectionmodel
    "programm_correctorsectionmodel": [
        {
            "section": 0,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 1,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
                {
            "section": 2,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 3,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 4,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 5,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 6,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 7,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
                {
            "section": 8,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
        {
            "section": 9,
            "c_0": randint(0, 50),
            "c_1": randint(0, 50),
            "c_2": randint(0, 50),
            "c_3": randint(0, 50),
        },
    ],
    # programm_reflowparammodel
    # "programm_reflowparammodel": {},
    # programm_reflowsectionmodel
    "programm_reflowsectionmodel": [
        {
            "section": 0,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 1,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 2,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 3,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
                {
            "section": 4,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 5,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 6,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 7,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 8,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
        {
            "section": 9,
            "r_0": randint(0, 50),
            "r_1": randint(0, 50),
            "r_2": randint(0, 50),
            "r_3": randint(0, 50),
        },
    ]
}


# select_all()
# select(id=105)
create(data)
# update(id=105)
"""
Обработка и запись данных в базу данных\n
Поддержка SQLite и PostgreSQL
"""

import json, psycopg2, sqlite3, datetime, logging
from psycopg2.extras import RealDictCursor
from pathlib import Path


class DatabaseSchemaEditor:
    """ Шаблоны SQL запросов в базу данных """

    sql_select = "SELECT * FROM %(table)s WHERE id = %(id)s"
    sql_create = "INSERT INTO %(table)s%(column)s VALUES %(value)s"
    sql_update = "UPDATE %(table)s SET %(column)s = %(value)s WHERE id = %(id)s"
    sql_delete = "DELETE FROM %(table)s WHERE id = %(id)s"

    def select_request(self, table, id):
        return self.sql_select % { "table": table, "id": id }

    def create_request(self, table, column, value):
        return self.sql_create % { "table": table, "column": column, "value": value }

    def update_request(self, table, column, value, id):
        self.sql_update % { "table": table, "column": column, "value": value, "id": id}

    def delete_request(self, table, id):
        return self.sql_delete % { "table": table, "id": id }




class Database(DatabaseSchemaEditor):
    """ ??? Засунуть сюда запросы """

    def create_cursor(self, request):

        print(request)
        response = 10
        return response



now_datetime = datetime.datetime.now()
related_models = (
    'programm_correctorsectionmodel',
    'programm_reflowsectionmodel'
)

def select_one():
    pass

def select_many():
    pass

def create_or_update(data):
    """ Создание или обновление программы """
    json_formatted_str = json.dumps(data, ensure_ascii=False, indent=4)
    print('\nDATA:\n', json_formatted_str, '\n')
    db = Database()


    # Раскидать по IF-ам Тут создаём программу
    data_programm = data.pop("programm_programmmodel")

    if data_programm['id'] == 0:
        del data_programm['id']
        programm_exist = False

    else:
        programm_exist = True
        print(f"ID PROGRAMM {data_programm['id']}, METHOD: UPDATE")

    data_programm['created_at'] = str(now_datetime)
    data_programm['updated_at'] = str(now_datetime)
    columns, values = data_programm.keys(), data_programm.values()
    if programm_exist:
        print("PROGRAMM UPDATE")
    else:
        request = db.create_request(table="programm_programmmodel", column=tuple(columns), value=tuple(values))


    
    for model in data:
        data_model = data[model]

        if type(data_model) != list:
            columns, values = data_model.keys(), data_model.values()
            if programm_exist:
                print('UPDATE METHOD PROGRAMM')
            else:
                request = db.create_request(table=model, column=tuple(columns), value=tuple(values))
                print(request)

        else:
            # THIS FOR RELATED FIELDS
            for data_related in data_model:
                columns, values = data_related.keys(), data_related.values()
                if programm_exist:
                    print('UPDATE METHOD PROGRAMM')
                else:
                    request = db.create_request(table=model, column=tuple(columns), value=tuple(values))
                    print(request)

    return 4

def delete():
    pass
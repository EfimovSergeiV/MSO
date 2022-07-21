"""
Обработка и запись данных в базу данных\n
Поддержка SQLite и PostgreSQL
"""

import json, psycopg2, sqlite3, datetime, logging
import re
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


class DatabaseSchemaEditor:
    """ Шаблоны SQL запросов в базу данных """

    sql_select = "SELECT * FROM %(table)s WHERE id = %(id)s"
    sql_create = "INSERT INTO %(table)s%(column)s VALUES %(value)s"
    sql_update = "UPDATE %(table)s SET %(column)s = %(value)s WHERE id = %(id)s"
    sql_delete = "DELETE FROM %(table)s WHERE id = %(id)s"
    sql_related = "SELECT * FROM %(table)s WHERE %(related_field)s = %(id)s"

    def select_request(self, table, id):
        return self.sql_select % { "table": table, "id": id }

    def create_request(self, table, column, value):
        return self.sql_create % { "table": table, "column": column, "value": value }

    def update_request(self, table, column, value, id):
        return self.sql_update % { "table": table, "column": column, "value": value, "id": id}

    def delete_request(self, table, id):
        return self.sql_delete % { "table": table, "id": id }

    def get_related(self, table, related_field, id):
        return self.sql_related % { "table": table, "related_field": related_field, "id": id}




class Database(DatabaseSchemaEditor):
    """  """

    def get_cursor_data(self, request):
        """ Курсор возвращающий данные """
        conn = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
        conn.row_factory = dict_factory
        cursor = conn.cursor()

        response = cursor.execute(request)
        print(f'THIS IS CREATE REUEST: {request}')
        data = response.fetchone()
        conn.close()

        return data

    def write_cursor_data(self, request):
        """ Курсор требующий коммита в базу"""

        conn = sqlite3.connect(f'{ BASE_DIR }/db.sqlite3')
        conn.row_factory = dict_factory
        cursor = conn.cursor()

        response = cursor.execute(request)
        print(f'THIS IS CREATE REUEST: {request}')

        conn.commit()
        conn.close()

        return response.lastrowid



now_datetime = datetime.datetime.now()
related_models = {
    'programm_correctorsectionmodel': None,
    'programm_reflowsectionmodel': None
}

""" Интерфейс для работы """
def create_or_update(data):
    """ Создание или обновление программы """
    return 4

def select_programm(id=None):
    """ Возвращает одну или несколько программ """
    pass

def remove_programm(id):
    """ Удаление программы """
    pass


# def create_or_update(data):
#     """ Создание или обновление программы """
#     # json_formatted_str = json.dumps(data, ensure_ascii=False, indent=4)
#     # print('\nDATA:\n', json_formatted_str, '\n')
#     db = Database()


#     # Раскидать по IF-ам Тут создаём программу
#     data_programm = data.pop("programm_programmmodel")

#     if data_programm['id'] == 0:
#         del data_programm['id']
#         programm_exist = False
#         data_programm['created_at'] = str(now_datetime)

#     else:
#         programm_exist = True
#         print(f"ID PROGRAMM {data_programm['id']}, METHOD: UPDATE")

#     data_programm['updated_at'] = str(now_datetime)
#     columns, values = data_programm.keys(), data_programm.values()

#     if programm_exist:
#         request = db.update_request(table="programm_programmmodel", column=tuple(columns), value=tuple(values), id=data_programm['id'])    
    
#     else:
#         request = db.create_request(table="programm_programmmodel", column=tuple(columns), value=tuple(values))

#     response = db.write_cursor_data(request)
#     programm_id = response if programm_exist == False else data_programm['id']

#     related_models = {
#         'programm_correctorparammodel': None,
#         'programm_reflowparammodel': None
#     }

#     for related_model in related_models:

#         request = db.get_related(table=related_model, related_field="programm_id", id=programm_id)
#         response = db.get_cursor_data(request)
#         related_models[related_model] = response['id']


#     for model in data:
#         data_model = data[model]

#         if type(data_model) != list:
#             columns, values = data_model.keys(), data_model.values()
#             if programm_exist:
#                 print('UPDATE METHOD PROGRAMM')
#             else:
#                 request = db.create_request(table=model, column=tuple(columns), value=tuple(values))
#                 print(request)

#         else:
#             # THIS FOR RELATED FIELDS
#             for data_related in data_model:
#                 columns, values = data_related.keys(), data_related.values()
#                 if programm_exist:
#                     print('UPDATE METHOD PROGRAMM')
#                 else:
#                     request = db.create_request(table=model, column=tuple(columns), value=tuple(values))
#                     print(request)





#     # Отправляем ID созданной программы, если была создана новая
#     if programm_exist:
#         return False
#     else:
#         return 'response'


# # a = create_or_update()
# # print(f"\n\n\nRETURN {a}")
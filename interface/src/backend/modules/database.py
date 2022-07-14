"""
Обработка и запись данных в базу данных\n
Поддержка SQLite и PostgreSQL
"""

import json, psycopg2, sqlite3, datetime, logging
from psycopg2.extras import RealDictCursor
from pathlib import Path


class DatabaseSchemaEditor:
    """ А тут генерировать реквесты """

    sql_select = ""
    sql_create = "INSERT INTO %(table)s%(column)s VALUES %(value)s"
    sql_update = ""

    def create_request(self, table, column, value):
        """ Создать """
        return self.sql_create% {"table": table,"column": column,"value": value }



class Database(DatabaseSchemaEditor):
    """ ??? Засунуть сюда запросы """

    def create(self, request):

        print(request)
        return 4



def create_or_update(data):
    """ Создание или обновление программы """
    json_formatted_str = json.dumps(data, ensure_ascii=False, indent=4)
    print('\nDATA:\n', json_formatted_str)
    db = Database()
    request = db.create_request(table="q",column="w",value="e")
    id = db.create(request)
    return id
"""
Пробуем эмулировать работу
"""

from random import randint



def welding():
    """ Эмуляция сварочного цикла """
    
    data = {
        "in_process": True,
        "randit": randint(0, 50)
    }
    return data
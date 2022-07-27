"""
Утилиты

"""
from netifaces import interfaces, ifaddresses, AF_INET


def get_update_from_git():
    """ Получить обновления из репозитория """

    return "Нет обновлений в репозитории"


def get_ip_adress():
    """ Получить IP адрес машины """

    for ifaceName in interfaces():
        addresses = [i['addr'] for i in ifaddresses(ifaceName).setdefault(AF_INET, [{'addr':'No IP addr'}] )]
        print(' '.join(addresses))
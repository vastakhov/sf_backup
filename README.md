# Содержание
1. [Описание](##-Описание)
2. [Подготовка к запуску](##-Подготовка-к-запуску)
> - [Генерация пароля приложения](###-Генераци-пароля-приложения)
> - [Редактирование `/etc/davfs2/secrets`](###-Редактирование-`/etc/davfs2/secrets`)
3. [Запуск скрипта](##-Запуск-скрипта)


## Описание
Скрипт `backup.sh` сжимает указанную папку в архив, сжимает её и копирует на Яндекс.Диск. 

## Подготовка к запуску

> - ### Генерация пароля приложения
Для генерации пароля приложения необходимо иметь аккаунт в сервисах Яндекса и перейти по ссылке https://passport.yandex.ru/profnanoile/access. Пароль необходимо сохранить.

> - ### Редактирование `/etc/davfs2/secrets`
В файл `/etc/davfs2/secrets` необходимо добавить строку:

`https://webdav.yandex.ru        Логин_от_Яндекса        Пароль_приложения`

## Запуск скрипта
Скрипт запускается с повышенными привилегиями. В параметр указывается директория, резервную копию которой необходимо сделать.

`Пример: "sudo ./backup.sh /home/user/backup"`
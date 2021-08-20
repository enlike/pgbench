# Prerequisits

В csv файле содержатся только Фамилия и Отчество, дабы не показывать полные данные пользователей

**Используется пор 54333, если другой, поменяйте парамтер -p на свой**

## Создание БД

```sql
CREATE DATABASE pgbench;
```

## Создание таблицы

```sql
CREATE TABLE public.users_user
(
    id serial primary key,
    first_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    middle_name character varying(64) COLLATE pg_catalog."default" NOT NULL
)
```

## Импорт данных в таблицу

*fm_name_view.csv* - файл для импорта 

1. Заходим на сервер постгре с созданой БД

```bash

psql -h localhost -U postgres -d pgbench -p 54333

```

2. Выполняем команду

```sql

\copy users_user(first_name, middle_name) from '~/Documents/pgbench/fm_name_view.csv' DELIMITER ',' csv header;

```

# Pgbench

## Инициализация

```bash

pgbench -h localhost -U postgres -p 54333 -i pgbench

```

### Запуск бенчмарка


#### iexact

pgbench -h localhost -U postgres -p 54333 -c 4 -r -T 100 -s 50 -f ~/Documents/pgbench/iexact.sql pgbench

#### icontains

pgbench -h localhost -U postgres -p 54333 -c 4 -r -T 100 -s 50 -f ~/Documents/pgbench/icontains.sql pgbench

#### exact

pgbench -h localhost -U postgres -p 54333 -c 4 -r -T 100 -s 50 -f ~/Documents/pgbench/exact.sql pgbench

#### contains

pgbench -h localhost -U postgres -p 54333 -c 4 -r -T 100 -s 50 -f ~/Documents/pgbench/contains.sql pgbench


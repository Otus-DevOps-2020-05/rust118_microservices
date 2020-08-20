# rust118_microservices
[![Build Status](https://travis-ci.com/Otus-DevOps-2020-05/rust118_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2020-05/rust118_microservices)

rust118 microservices repository

## ДЗ 19

Рассмотрена работа разных сетевых драйверов.
Приложение собирается с помощью docker-compose, контейнеры разнесены по разным сетям, 'docker-compose.yml' параметризован, переменные читаются из файла '.env'.
По умолчанию в качестве имени проекта используется имя директории, можно явно задать через переменную COMPOSE_PROJECT_NAME.
Создан 'docker-compose.override.yml'.

## ДЗ 18

Приложение разбито на несколько контейнеров, алиасы которых можно менять при запуске через командную строку:
    docker run -d --network=reddit --network-alias=my_post_db --network-alias=my_comment_db mongo:latest
    docker run -d --network=reddit -e POST_DATABASE_HOST=my_post_db --network-alias=my_post rust118/post:1.0
    docker run -d --network=reddit -e COMMENT_DATABASE_HOST=my_comment_db --network-alias=my_comment rust118/comment:1.0
    docker run -d --network=reddit -e POST_SERVICE_HOST=my_post -e COMMENT_SERVICE_HOST=my_comment -p 9292:9292 rust118/ui:1.0

Рамер образа уменьшается, если:
 - взять за основу наиболее подходящий образ (не обязательно голый alpine);
 - устанавливать только необходимый минимум пакетов;
 - удалять или запрещать кэши пакетов;
 - собирать multistage-образы.

## ДЗ 17

Экземпляры докер-хостов поднимаются с помощью terraform, количество указывается в переменной "inst_qty" (по умолчанию - 2).

На ansible реализованы два варианта установки docker для запуска контейнера с приложением: с помощью apt и с помощью docker-machine. В обоих случаях инспользуется динамическая инвентаризация.

С помощью packer создается fired образ docker engine.

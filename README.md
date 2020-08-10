# rust118_microservices
[![Build Status](https://travis-ci.com/Otus-DevOps-2020-05/rust118_microservices.svg?branch=master)](https://travis-ci.com/Otus-DevOps-2020-05/rust118_microservices)

rust118 microservices repository

## ДЗ№17

Экземпляры докер-хостов поднимаются с помощью terraform, количество указывается в переменной "inst_qty" (по умолчанию - 2).

На ansible реализованы два варианта установки docker для запуска контейнера с приложением: с помощью apt и с помощью docker-machine. В обоих случаях инспользуется динамическая инвентаризация.

С помощью packer создается fired образ docker engine.

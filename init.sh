#!/bin/bash

rabbitmqctl add_vhost bki_service;
rabbitmqctl add_vhost zaymigo;

echo 'developer' | rabbitmqctl add_user 'bki_service';
rabbitmqctl list_users;
rabbitmqctl set_permissions -p "bki_service" "bki_service" ".*" ".*" ".*";
rabbitmqctl list_user_permissions bki_service;

echo 'developer' | rabbitmqctl add_user 'zaymigo';
rabbitmqctl list_users;
rabbitmqctl set_permissions -p "zaymigo" "zaymigo" ".*" ".*" ".*";
rabbitmqctl list_user_permissions zaymigo;

#!/bin/bash

cd /opt
git clone https://github.com/Lavikavi/roboshop-shell.git
cd roboshop-shell
bash rabbitmq.sh ${rabbitmq_appuser_password} &>>/opt/roboshop.log

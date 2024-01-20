#!/bin/sh

cp /application.yml /home/mail/src/main/resources/application.yml

cd /home/mail

gradle build --daemon --build-cache --parallel

java -jar -Duser.timezone=Asia/Seoul /home/mail/build/libs/spring-batch-0.0.1-SNAPSHOT.jar
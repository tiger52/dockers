#!/bin/bash

sudo docker run --rm -v /home/tiger/docker/elk/logstashconf/pipeline:/usr/share/logstash/pipeline -v /home/tiger/docker/elk/logstashconf/logstash.yml:/usr/share/logstash/config/logstash.yml -it logstash:alpine

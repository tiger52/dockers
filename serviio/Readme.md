# Serviio in docker

[![](http://serviio.org/images/serviio.png)](http://serviio.org/)

### plugin
this container has YoutubeDL plugin
### Run it
to run serviio you change path to content folder in `docker-compose.yml` file
and do next
```
sudo docker build -t serviio .
sudo docker-compose up -d
```
after start change transode foler from `/tmp` to `/transcode`
link where you can to do this - http://localhost:23423/console/#/app/delivery/transcoding

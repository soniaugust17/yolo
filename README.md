# How to run the yolo in docker

## Prerequisite 

* Install docker   
[https://docs.docker.com/v17.12/install/](https://docs.docker.com/v17.12/install/)
* Install docker-compose  
[https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)


* Check the docker service is running

## Getting Started

* Clone the repo   
You need to execute this command only once
```
git clone https://github.com/soniaugust17/yolo.git
```

* Copy the *****.war file in ./data dir
Every time you make any changes in the code then you need to copy the latest war in ./data dir and restart the docker

* Copy the mysql data dump(*****.sql) (table schema + data) in ./data dir
This used to populate the mysql database dreamapp with table schema and data. Will be executed only once in complete lifetime.   



* run the service with command  
First time this command will take few minutes and internet connectivity is must as it download its images from docker-hub (around 1 GB)
```
docker-compoe up
```

* Check that the mysql and jboss is running in docker 

```
docker-compose ps 
```
* access the app 
```
http://localhost:8080/dwmts
```
## Taking database backup
*Go inside mysql container and 
 sudo docker exec -it <container id> bash 
* Scheam Only
mysqldump --no-data -u <someuser> -p <database_name> > file_name.sql
* for product for launch you need the data also 
mysqldump -u <someuser> -p --no-create-info <database_name> <table_name> >> <same file name as above>

*With all data
mysqldump -u <someuser> -p <database_name> > file_name.sql

## Only for advance user : to deleate all the tables and recreate the database
```
docker-compose down -v 
```
* and remove all the data inside ./mysql_data


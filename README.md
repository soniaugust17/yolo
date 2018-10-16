# How to run the yolo in docker

## Prerequisite 

* Install docker 
** [https://docs.docker.com/v17.12/install/](https://docs.docker.com/v17.12/install/)
* Install docker-compose

**[https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)


* Check the docker service is running

## Getting Started

* Clone the repo 
You need to execute this command only once
```
git clone https://github.com/soniaugust17/yolo.git
```

* Copy the war file in ./data dir  
Every time you make any changes in the code then you need to copy the latest war in .data dir and restart the docker

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



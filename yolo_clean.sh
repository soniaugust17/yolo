cd /home/rahul_cse/yolo-master

docker-compose down -v

cd mysql_data

rm -rf *

docker-compose up &

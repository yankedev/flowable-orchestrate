 docker run --name mysql -p 3306:3306 -e "MYSQL_ROOT_PASSWORD=fefe" -e "MYSQL_USER=flowableuser" -e "MYSQL_DATABASE=flowable" -e "MYSQL_PASSWORD=Password01" bitnami/mysql

docker pull docker.elastic.co/elasticsearch/elasticsearch:7.10.2


docker run -p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" docker.elastic.co/elasticsearch/elasticsearch:7.10.2


@echo off


echo XXXXXXXX
echo http://localhost:8761
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-discovery-eureka-ha/target/
echo  start java -jar  microservice-discovery-eureka-ha-0.0.1-SNAPSHOT.jar  --spring.profiles.active=peer1
start java -jar  microservice-discovery-eureka-ha-0.0.1-SNAPSHOT.jar    --spring.profiles.active=peer1
echo XXXXXXXX end  discovery-eureka-ha


echo XXXXXXXX
echo http://localhost:8762
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-discovery-eureka-ha/target/
echo  start java -jar  microservice-discovery-eureka-ha-0.0.1-SNAPSHOT.jar    --spring.profiles.active=peer2
start java -jar  microservice-discovery-eureka-ha-0.0.1-SNAPSHOT.jar    --spring.profiles.active=peer2
echo XXXXXXXX end  discovery-eureka-ha





echo XXXXXXXX



pause
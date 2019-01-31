@echo off


echo XXXXXXXX
echo http://localhost:8761
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-discovery-eureka-authenticating/target/
echo  start java -jar  microservice-discovery-eureka-authenticating-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-discovery-eureka-authenticating-0.0.1-SNAPSHOT.jar   
echo XXXXXXXX end  discovery-eureka-authenticating

echo XXXXXXXX


pause
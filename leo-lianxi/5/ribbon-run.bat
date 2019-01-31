@echo off


echo XXXXXXXX
echo http://localhost:8761
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-discovery-eureka/target/
echo  start java -jar  microservice-discovery-eureka-0.0.1-SNAPSHOT.jar   --server.port=8761
start java -jar  microservice-discovery-eureka-0.0.1-SNAPSHOT.jar   --server.port=8761
echo XXXXXXXX end  discovery-eureka


echo XXXXXXXX
echo http://localhost:8000/1
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client
echo XXXXXXXX  spring-boot-starter-actuator   
echo http://localhost:8000/health
echo http://localhost:8000/info
echo http://localhost:8000/env
echo http://localhost:8000/mappings
echo http://localhost:8000/dump
echo http://localhost:8000/beans
echo http://localhost:8000/autoconfig 	
echo http://localhost:8000/shutdown
echo http://localhost:8000/metrics
echo XXXXXXXX
cd ../../microservice-provider-user/target/
echo start java -jar  microservice-provider-user-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-provider-user-0.0.1-SNAPSHOT.jar  --server.port=8000
echo XXXXXXXX end  provider-user


echo XXXXXXXX
echo http://localhost:8001/1
echo XXXXXXXX
cd ../../microservice-provider-user/target/
echo start java -jar  microservice-provider-user-0.0.1-SNAPSHOT.jar  --server.port=8001   --spring.profiles.active=test 
start java -jar  microservice-provider-user-0.0.1-SNAPSHOT.jar  --server.port=8001
echo XXXXXXXX end provider-user




echo XXXXXXXX
echo http://localhost:8010/user/1      http://localhost:8010/log-user-instance
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  包含了  spring-boot-starter-ribbon
echo XXXXXXXX  spring-boot-starter-actuator
cd ../../microservice-consumer-movie-ribbon/target/
echo  start java -jar  microservice-consumer-movie-ribbon-0.0.1-SNAPSHOT.jar   --server.port=8010
start java -jar  microservice-consumer-movie-ribbon-0.0.1-SNAPSHOT.jar   --server.port=8010
echo XXXXXXXX end  consumer-movie-ribbon


:echo java -jar ../../microservice-simple-provider-user/target/microservice-simple-provider-user-0.0.1-SNAPSHOT.jar
:java -jar ../../microservice-simple-provider-user/target/microservice-simple-provider-user-0.0.1-SNAPSHOT.jar



echo XXXXXXXX



pause
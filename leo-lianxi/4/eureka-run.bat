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
echo XXXXXXXX end  simple-provider-user


echo XXXXXXXX
echo http://localhost:8010/user/1
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client
echo XXXXXXXX  spring-boot-starter-actuator
cd ../../microservice-consumer-movie/target/
echo  start java -jar  microservice-consumer-movie-0.0.1-SNAPSHOT.jar   --server.port=8010
start java -jar  microservice-consumer-movie-0.0.1-SNAPSHOT.jar   --server.port=8010
echo XXXXXXXX end  consumer-movie

echo XXXXXXXX 
echo　方位　ｅｕｒｅｋａ　服务器；　http://localhost:8761/
echo XXXXXXXX 



pause
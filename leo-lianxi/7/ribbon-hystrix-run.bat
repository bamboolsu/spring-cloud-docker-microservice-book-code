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
echo http://localhost:8010/user/1      http://localhost:8010/log-user-instance
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  
echo XXXXXXXX  spring-cloud-starter-netflix-hystrix
cd ../../microservice-consumer-movie-ribbon-hystrix/target/
echo  start java -jar  microservice-consumer-movie-ribbon-hystrix-0.0.1-SNAPSHOT.jar   --server.port=8010
start java -jar  microservice-consumer-movie-ribbon-hystrix-0.0.1-SNAPSHOT.jar   --server.port=8010
echo XXXXXXXX end  consumer-movie-ribbon-hystrix



echo XXXXXXXX 
echo  4： 访问 http://localhost:8010/user/1
echo XXXXXXXX

echo XXXXXXXX 
echo  5： 访问 http://localhost:8010/health
echo XXXXXXXX

echo XXXXXXXX
echo  6：停止  microservice-provider-user
echo XXXXXXXX

echo XXXXXXXX
echo  7：再次访问  http://localhost:8010/user/1  得到回退结果
echo XXXXXXXX

echo XXXXXXXX 
echo  8： 访问 http://localhost:8010/health
echo XXXXXXXX


echo XXXXXXXX 
echo  9：持续快速的访问http://localhost:8010/user/1， 直至请求快速返回；
echo XXXXXXXX



echo XXXXXXXX
echo 启动1，2，3
echo XXXXXXXX


echo XXXXXXXX 
echo  4： 访问 http://localhost:8010/hystrix.stream 此时没有数据；
echo XXXXXXXX

echo XXXXXXXX 
echo  5： 访问 http://localhost:8010/user/1
echo XXXXXXXX


echo XXXXXXXX 
echo  6： 访问 http://localhost:8010/hystrix.stream 此时有数据；
echo XXXXXXXX


pause
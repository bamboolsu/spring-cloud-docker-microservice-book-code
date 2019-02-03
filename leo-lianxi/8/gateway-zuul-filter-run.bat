@echo off


echo XXXXXXXX
echo 1, start 启动　microservice-discovery-eureka
echo http://localhost:8761
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-discovery-eureka/target/
echo  start java -jar  microservice-discovery-eureka-0.0.1-SNAPSHOT.jar   --server.port=8761
start java -jar  microservice-discovery-eureka-0.0.1-SNAPSHOT.jar   --server.port=8761
echo XXXXXXXX end  discovery-eureka


echo XXXXXXXX
echo 2, start启动　microservice-provider-user
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
echo 3, start　　microservice-consumer-movie-ribbon
echo http://localhost:8010/user/1      http://localhost:8010/log-user-instance
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  包含了  spring-boot-starter-ribbon
echo XXXXXXXX  spring-boot-starter-actuator
cd ../../microservice-consumer-movie-ribbon/target/
echo  start java -jar  microservice-consumer-movie-ribbon-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-consumer-movie-ribbon-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX 


echo XXXXXXXX
echo 4, start　启动　
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  包含了  spring-boot-starter-ribbon　使用ｒｉｂｂｏｎ来定位
echo XXXXXXXX  spring-cloud-starter-netflix-zuul　　整合了hystrix，从而实现容错；
cd ../../microservice-gateway-zuul-filter/target/
echo  start java -jar  microservice-gateway-zuul-filter-0.0.1-SNAPSHOT.jar 
start java -jar  microservice-gateway-zuul-filter-0.0.1-SNAPSHOT.jar 
echo XXXXXXXX 


echo XXXXXXXX 
echo 5, start 访问 http://localhost:8040/microservice-provider-user/1  请求会被转发到 http://localhost:8010/user/1
echo XXXXXXXX




pause
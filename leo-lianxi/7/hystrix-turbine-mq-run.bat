@echo off


echo XXXXXXXX
echo １，　启动　microservice-discovery-eureka
echo http://localhost:8761
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-discovery-eureka/target/
echo  start java -jar  microservice-discovery-eureka-0.0.1-SNAPSHOT.jar   --server.port=8761
start java -jar  microservice-discovery-eureka-0.0.1-SNAPSHOT.jar   --server.port=8761
echo XXXXXXXX 


echo XXXXXXXX
echo ２，　启动　microservice-provider-user
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
echo XXXXXXXX



echo XXXXXXXX
echo ３，　启动　microservice-consumer-movie-ribbon-hystrix-turbine-mq
echo http://localhost:8010/user/1      http://localhost:8010/log-user-instance
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  
echo XXXXXXXX  spring-cloud-starter-netflix-hystrix-rabbit
cd ../../microservice-consumer-movie-ribbon-hystrix-turbine-mq/target/
echo  start java -jar  microservice-consumer-movie-ribbon-hystrix-turbine-mq-0.0.1-SNAPSHOT.jar   --server.port=8010
start java -jar  microservice-consumer-movie-ribbon-hystrix-turbine-mq-0.0.1-SNAPSHOT.jar   --server.port=8010
echo XXXXXXXX


echo XXXXXXXX
echo 4，　启动　microservice-hystrix-turbine-mq
echo http://localhost:8031/turbine.stream   
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  
echo XXXXXXXX  spring-cloud-starter-netflix-hystrix-mq
cd ../../microservice-hystrix-turbine-mq/target/
echo  start java -jar  microservice-hystrix-turbine-mq-0.0.1-SNAPSHOT.jar   --server.port=8031
start java -jar  microservice-hystrix-turbine-mq-0.0.1-SNAPSHOT.jar
echo XXXXXXXX 



echo XXXXXXXX 
echo  ５： 访问 http://localhost:8010/user/1
echo XXXXXXXX

echo XXXXXXXX 
echo  ６： 访问 　http://localhost:8031/  可以持续不断的显示监控数据
echo XXXXXXXX


pause
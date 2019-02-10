@echo off

echo XXXXXXXX
echo http://localhost:8000/1
echo XXXXXXXX

echo XXXXXXXX
echo spring-boot-starter-actuator
echo http://localhost:8000/health
echo http://localhost:8000/env
echo http://localhost:8000/mappings
echo http://localhost:8000/dump
echo http://localhost:8000/beans
echo http://localhost:8000/autoconfig 	
echo http://localhost:8000/shutdown
echo http://localhost:8000/metrics
echo XXXXXXXX



echo XXXXXXXX
echo 1, start 启动
cd ../../trace/microservice-simple-provider-user-trace/target/
echo start java -jar  microservice-simple-provider-user-trace-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-simple-provider-user-trace-0.0.1-SNAPSHOT.jar
cd ../
echo XXXXXXXX end  simple-provider-user-trace


echo XXXXXXXX
echo 2, access  http://localhost:8000/1
echo XXXXXXXX


echo sleep 30s
ping 1.123.1.1 -n 1 -w 30000 > nul
echo end of sleep 30s



echo XXXXXXXX
echo 3, start simple-consumer-movie-trace
cd ../../trace/microservice-simple-consumer-movie-trace/target/
echo start java -jar  microservice-simple-consumer-movie-trace-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-simple-consumer-movie-trace-0.0.1-SNAPSHOT.jar
cd ../
echo XXXXXXXX end  simple-consumer-movie-trace



echo XXXXXXXX
echo 2, access  http://localhost:8010/user/1
echo XXXXXXXX



pause
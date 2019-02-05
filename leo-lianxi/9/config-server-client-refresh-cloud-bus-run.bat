@echo off


echo XXXXXXXX
echo 1, start 启动　microservice-config-server
echo http://localhost:8080
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-server/target/
echo  start java -jar  microservice-config-server-0.0.1-SNAPSHOT.jar   --server.port=8080
start java -jar  microservice-config-server-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-server

echo sleep 30s
ping 1.123.1.1 -n 1 -w 30000 > nul
echo end of sleep 30s

echo XXXXXXXX
echo 2, start 启动　microservice-config-client-refresh-cloud-bus
echo http://localhost:8081
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-client-refresh-cloud-bus/target/
echo  start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-client-refresh-cloud-bus

echo sleep 30s
ping 1.123.1.1 -n 1 -w 30000 > nul
echo end of sleep 30s


echo XXXXXXXX
echo 22, start 启动　microservice-config-client-refresh-cloud-bus
echo http://localhost:8082
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-client-refresh-cloud-bus/target/
echo  start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  --server.port=8082
echo XXXXXXXX end  config-client-refresh-cloud-bus

echo sleep 60s
ping 1.123.1.1 -n 1 -w 60000 > nul
echo end of sleep 60s


echo XXXXXXXX 
echo 3, access http://localhost:8081/profile
echo XXXXXXXX


echo XXXXXXXX 
echo 4, modify git ; microservice-foo-dev.properties de profile=dev-1.0-change.
echo XXXXXXXX


echo XXXXXXXX 
echo ５, access http://localhost:8081/profile   http://localhost:8082/profile 发现之依然是原来的没有改变；
echo XXXXXXXX


echo XXXXXXXX 
echo ６, curl -X POST http://localhost:8081/bus/refresh      bus/refresh
echo XXXXXXXX


echo XXXXXXXX 
echo 7, access http://localhost:8081/profile  此时值改变；
echo XXXXXXXX



pause
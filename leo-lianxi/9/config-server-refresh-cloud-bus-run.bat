@echo off


echo XXXXXXXX
echo 1, start 启动　microservice-config-server-refresh-cloud-bus
echo http://localhost:8080
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-server-refresh-cloud-bus/target/
echo  start java -jar  microservice-config-server-refresh-cloud-bus-0.0.1-SNAPSHOT.jar   --server.port=8080
start java -jar  microservice-config-server-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-server-refresh-cloud-bus

echo sleep 20s
ping 1.123.1.1 -n 1 -w 20000 > nul
echo end of sleep 20s

echo XXXXXXXX
echo 2, start 启动　   microservice-config-client-refresh-cloud-bus
echo http://localhost:8081
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-client-refresh-cloud-bus/target/
echo  start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-client-refresh-cloud-bus

echo sleep 20s
ping 1.123.1.1 -n 1 -w 20000 > nul
echo end of sleep 20s


echo XXXXXXXX
echo 22, start 启动　microservice-config-client-refresh-cloud-bus
echo http://localhost:8082
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-client-refresh-cloud-bus/target/
echo  start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-config-client-refresh-cloud-bus-0.0.1-SNAPSHOT.jar  --server.port=8082
echo XXXXXXXX end  config-client-refresh-cloud-bus

echo sleep 20s
ping 1.123.1.1 -n 1 -w 20000 > nul
echo end of sleep 20s


echo XXXXXXXX 
echo 3, access http://localhost:8081/profile
echo XXXXXXXX


echo XXXXXXXX 
echo 4, modify git ; microservice-foo-dev.properties de profile=dev-1.0-change.
echo XXXXXXXX


echo XXXXXXXX 
echo 5, access http://localhost:8081/profile   http://localhost:8082/profile 发现之依然是原来的没有改变；
echo XXXXXXXX


echo XXXXXXXX 
echo 6, bus refresh  config server;   curl -X POST http://localhost:8080/bus/refresh  
echo management.security.enabled=false；  在application.properties中加入：
#关闭验证 management.security.enabled=false  
echo XXXXXXXX


echo XXXXXXXX 
echo 7, access http://localhost:8081/profile    http://localhost:8082/profile  此时值改变；
echo XXXXXXXX



pause
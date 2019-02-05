@echo off


echo XXXXXXXX
echo 1, start 启动　microservice-config-server
echo http://localhost:8080
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-server/target/
echo  start java -jar  microservice-config-server-0.0.1-SNAPSHOT.jar   --server.port=8080
start java -jar  microservice-config-server-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-server

echo XXXXXXXX
echo 2, start 启动　microservice-config-client-refresh
echo http://localhost:8081
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-client-refresh/target/
echo  start java -jar  microservice-config-client-refresh-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-config-client-refresh-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-client-refresh


echo XXXXXXXX 
echo 3, access http://localhost:8081/profile
echo XXXXXXXX


echo XXXXXXXX 
echo 4, modify git ; microservice-foo-dev.properties de profile=dev-1.0-change.
echo XXXXXXXX


echo XXXXXXXX 
echo ５, access http://localhost:8081/profile  发现之依然是原来的没有改变；
echo XXXXXXXX


echo XXXXXXXX 
echo ６, curl -X POST http://localhost:8081/refresh  
echo XXXXXXXX


echo XXXXXXXX 
echo 7, access http://localhost:8081/profile  此时值改变；
echo XXXXXXXX



pause
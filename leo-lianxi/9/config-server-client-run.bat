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
echo 2, start 启动　microservice-config-client
echo http://localhost:8080
echo XXXXXXXX  spring-cloud-starter-netflix-eureka-server
cd ../../microservice-config-client/target/
echo  start java -jar  microservice-config-client-0.0.1-SNAPSHOT.jar   --server.port=8080
start java -jar  microservice-config-client-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX end  config-client



echo XXXXXXXX 
echo 3, access http://localhost:8080/microservice-foo/dev
echo {"name":"microservice-foo","profiles":["dev"],"label":null,"version":"46bbc685b90abc848a0eb2c919e30da3ad0fecde","state":null,"propertySources":[{"name":"https://github.com/bamboolsu/spring-cloud-config-repo/microservice-foo-dev.properties","source":{"profile":"dev-1.0-test"}},{"name":"https://github.com/bamboolsu/spring-cloud-config-repo/microservice-foo.properties","source":{"profile":"default-1.0"}},{"name":"https://github.com/bamboolsu/spring-cloud-config-repo/application.properties","source":{"profile":"default","test":"1"}}]}
echo XXXXXXXX


echo XXXXXXXX 
echo 4, access http://localhost:8080/microservice-foo-dev.properties
echo profile: dev-1.0-test   test: 1
echo XXXXXXXX


echo XXXXXXXX 
echo 5, access http://localhost:8080/config-label-v2.0/microservice-foo-dev.properties
echo profile: dev-2.0  test: 1 
echo XXXXXXXX


echo XXXXXXXX 
echo 6, access http://localhost:8081/profile
echo profile: dev-2.0  test: 1 
echo XXXXXXXX



pause
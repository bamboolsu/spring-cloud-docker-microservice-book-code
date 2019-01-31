@echo off
echo XXXXXXXX
echo http://localhost:8000/1
echo XXXXXXXX

echo XXXXXXXX
echo spring-boot-starter-actuator
echo http://localhost:8000/health
echo {"status":"UP","diskSpace":{"status":"UP","total":1000203087872,"free":213634797568,"threshold":10485760},"db":{"status":"UP","database":"H2","hello":1}}
echo http://localhost:8000/info
echo {"app":{"name":"microservice-simple-provider-user","encoding":"UTF-8","java":{"source":"1.8.0_60","target":"1.8.0_60"}}}

echo http://localhost:8000/env
echo http://localhost:8000/mappings
echo http://localhost:8000/dump
echo http://localhost:8000/beans
echo http://localhost:8000/autoconfig 	
echo http://localhost:8000/shutdown
echo http://localhost:8000/metrics
echo XXXXXXXX



cd ../../microservice-simple-provider-user/target/
echo start java -jar  microservice-simple-provider-user-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-simple-provider-user-0.0.1-SNAPSHOT.jar  --server.port=8000 --spring.profiles.active=test
echo XXXXXXXX end  simple-provider-user


echo XXXXXXXX
echo http://localhost:8010/user/1
echo XXXXXXXX
cd ../../microservice-simple-consumer-movie/target/
start java -jar  microservice-simple-consumer-movie-0.0.1-SNAPSHOT.jar   --server.port=8010
echo XXXXXXXX end  simple-consumer-movie


:echo java -jar ../../microservice-simple-provider-user/target/microservice-simple-provider-user-0.0.1-SNAPSHOT.jar
:java -jar ../../microservice-simple-provider-user/target/microservice-simple-provider-user-0.0.1-SNAPSHOT.jar



echo XXXXXXXX



pause
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
cd ../../trace/microservice-trace-zipkin-server-stream-elasticsearch/target/
echo start java -jar  microservice-trace-zipkin-server-stream-elasticsearch-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-trace-zipkin-server-stream-elasticsearch-0.0.1-SNAPSHOT.jar
cd ../
echo XXXXXXXX end  microservice-trace-zipkin-server-stream-elasticsearch


echo XXXXXXXX
echo 1, access  http://localhost:9411
echo XXXXXXXX


echo sleep 20s
ping 1.123.1.1 -n 1 -w 20000 > nul
echo end of sleep 20s


echo XXXXXXXX
echo 2, start 
cd ../../trace/microservice-simple-provider-user-trace-zipkin-stream/target/
echo start java -jar  microservice-simple-provider-user-trace-zipkin-stream-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-simple-provider-user-trace-zipkin-stream-0.0.1-SNAPSHOT.jar
cd ../
echo XXXXXXXX end  microservice-simple-provider-user-trace-zipkin-stream


echo XXXXXXXX
echo 3, start microservice-simple-consumer-movie-trace-zipkin-stream
cd ../../trace/microservice-simple-consumer-movie-trace-zipkin-stream/target/
echo start java -jar  microservice-simple-consumer-movie-trace-zipkin-stream-0.0.1-SNAPSHOT.jar  --server.port=8000   --spring.profiles.active=test 
start java -jar  microservice-simple-consumer-movie-trace-zipkin-stream-0.0.1-SNAPSHOT.jar
cd ../
echo XXXXXXXX end  microservice-simple-consumer-movie-trace-zipkin-stream



echo XXXXXXXX
echo 4, many times access  http://localhost:8010/user/1
echo XXXXXXXX

echo XXXXXXXX
echo 5, access  http://localhost:9411  输入时间段，就可以看到跟踪的数据；
echo XXXXXXXX

echo XXXXXXXX
echo 6 acces:  http://127.0.0.1:9200 http://localhost:9100/
echo XXXXXXXX

echo XXXXXXXX
echo 7 close zipkip server; and restart zipkip server
echo XXXXXXXX

echo XXXXXXXX
echo 8, access  http://localhost:9411  输入时间段，就可以   再次  看到跟踪的数据；
echo XXXXXXXX

pause
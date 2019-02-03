@echo off


echo XXXXXXXX
echo http://localhost:8030/hystrix
echo XXXXXXXX
cd ../../microservice-hystrix-dashboard/target/
echo start java -jar  microservice-hystrix-dashboard-0.0.1-SNAPSHOT.jar  --server.port=8030 
start java -jar  microservice-hystrix-dashboard-0.0.1-SNAPSHOT.jar  --server.port=8030
echo XXXXXXXX end  hystrix-dashboard



echo XXXXXXXX
echo 开启 fegin-hystrix-fallback-stream-run.bat  或者 ribbon-hystrix-run；
echo XXXXXXXX



echo XXXXXXXX
echo http://localhost:8030/hystrix  里面输入 http://localhost:8010/hystrix.stream 然后 monitor就可以监控 这路stream数据了；
echo XXXXXXXX



pause
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
echo 2, start　　microservice-file-upload
echo    
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  包含了  spring-boot-starter-ribbon　使用ｒｉｂｂｏｎ来定位
echo XXXXXXXX  spring-boot-starter-actuator
cd ../../microservice-file-upload/target/
echo  start java -jar  microservice-file-upload-0.0.1-SNAPSHOT.jar  
start java -jar  microservice-file-upload-0.0.1-SNAPSHOT.jar  
echo XXXXXXXX 


echo XXXXXXXX
echo 3, start　启动　
echo XXXXXXXX spring-cloud-starter-netflix-eureka-client  包含了  spring-boot-starter-ribbon　使用ｒｉｂｂｏｎ来定位
echo XXXXXXXX  spring-cloud-starter-netflix-zuul　　整合了hystrix，从而实现容错；
cd ../../microservice-gateway-zuul/target/
echo  start java -jar  microservice-gateway-zuul-0.0.1-SNAPSHOT.jar 
start java -jar  microservice-gateway-zuul-0.0.1-SNAPSHOT.jar 
echo XXXXXXXX 


echo XXXXXXXX 
echo 4, 测试上传到　microservice-file-upload　使用命令：　curl -F "file=@gateway-zuul-run.bat" localhost:8050/upload , 大小文件都可以上传；
echo XXXXXXXX

echo XXXXXXXX 
echo ５, 测试上传到　microservice-gateway-zuul　使用命令：　大文件要带　zuul 　curl -F "file=@microservice-gateway-zuul-0.0.1-SNAPSHOT.jar" localhost:8040/zuul/microservice-file-upload/upload , 大小文件都可以上传；

echo  测试上传到　microservice-gateway-zuul　使用命令：　curl -F "file=@microservice-gateway-zuul-0.0.1-SNAPSHOT.jar" localhost:8040/microservice-file-upload/upload ,  不带zuul, 会报错：　 org.apache.tomcat.util.http.fileupload.FileUploadBase$SizeLimitExceededException: the request was rejected because its size (39265335) exceeds the configured maximum (10485760)","path":"/microservice-file-upload/upload"

echo XXXXXXXX





pause
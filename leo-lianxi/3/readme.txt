actuator£º ¼à¿ØÎ¢·þÎñÊµÀý£»  


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
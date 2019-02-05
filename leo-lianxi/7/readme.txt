
hystrix 监控hystrix command等；




hystrix 监控：  主动看；  http://localhost:8010/hystrix.stream  
	可视化监控： hystrix-dashboard:   http://localhost:8030/hystrix  dashboard;

hystrix 容错与回退：

tiurbine:  聚合监控数据；  所有 hystrix.stream 聚合到 turbine.stream 中； 集群的监控更方便：
	starter-turbine: 
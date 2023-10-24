

region= "us-east-1a"

index=1

logstash_servers_count = 2

appname = "test"



comparison_operator="LessThanThreshold"

metric_name = ["HealthyHostCount","UnHealthyHostCount"]

namespace= "AWS/NetworkELB"

statistic= "Average"

load_balancer =["test1", "test2","test3"]

target_group = "testing1"
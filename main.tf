module "nlb_healthyhosts" {
  source              = "https://github.com/rahul309/alarm/blob/0ff32790f6d72b44b5cf1bfe310dc013451981f0/module/main.tf"
  //alarm_name          = "cwa-${var.appname}-${var.region}-nlb-${var.index}"
  
  comparison_operator = var.comparison_operator 
  namespace           = var.namespace 
  statistic           = var.statistic 
  
  metric_name         = var.metric_name 
  logstash_servers_count= var.logstash_servers_count
  load_balancer = var.load_balancer
  target_group = var.target_group
}

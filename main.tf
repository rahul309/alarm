module "nlb_healthyhosts" {
  source              = "https://github.com/rahul309/alarm/module"
  //alarm_name          = "cwa-${var.appname}-${var.region}-nlb-${var.index}"
  
  comparison_operator = var.comparison_operator 
  namespace           = var.namespace 
  statistic           = var.statistic 
  
  metric_name         = var.metric_name 
  logstash_servers_count= var.logstash_servers_count
  load_balancer = var.load_balancer
  target_group = var.target_group
}

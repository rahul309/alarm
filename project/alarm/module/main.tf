resource "aws_cloudwatch_metric_alarm" "nlb_healthyhosts" {
    count =   length(var.metric_name) * length(var.load_balancer)
    //"${length(var.severities)}"
  alarm_name          = "cwa-${var.appname}-${var.region}-nlb-${count.index}"
  comparison_operator = var.comparison_operator 
  evaluation_periods  = 1
  metric_name         = var.metric_name[count.index  % length(var.metric_name)]
  namespace           = var.namespace 
  period              = 60
  statistic           = var.statistic 
  threshold           = var.logstash_servers_count
  alarm_description   = "Number of healthy nodes in Target Group"
  actions_enabled     = "true"
  //alarm_actions       = [aws_sns_topic.sns.arn]
  //ok_actions          = [aws_sns_topic.sns.arn]
  dimensions = {
    //for_each = toset(var.load_balancer)
    
    TargetGroup  = var.target_group
    LoadBalancer = var.load_balancer[floor(count.index / length(var.metric_name))]
  }
}
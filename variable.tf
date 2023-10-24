variable "logstash_servers_count" {

    description = "value"
  
}

variable "appname" {
  description = "value"
}

variable "region" {
  description = "value"
}

variable "index" {
  description = "value"
}


variable "comparison_operator" {
  description = "value"
}

variable "metric_name" {
  type= list(string)
  description = "value"
}

variable "namespace" {
  description = "value"
}

variable "statistic" {
  description = "value"
}

variable "load_balancer" {
  description = "value"
  type= list(string)
}
variable "target_group" {
  description = "value"
}

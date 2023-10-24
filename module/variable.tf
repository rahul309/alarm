
variable "appname" {
  description = "value"
  default = "test"
}
variable "region" {
  description = "value"
  default = "us-east-1a"
}

variable "index" {
  description = "value"
  default = 0
}

variable "comparison_operator" {
  description = "value"
}

variable "metric_name" {
  description = "value"
  type= list(string)
}

variable "namespace" {
  description = "value"
}

variable "statistic" {
  description = "value"
}

variable "logstash_servers_count" {
  description = "value"
}

variable "load_balancer" {
  description = "value"
  type= list(string)
  default = [0]
}
variable "target_group" {
  description = "value"
  default = null
}



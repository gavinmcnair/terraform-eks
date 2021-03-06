variable "cluster_name" {
  type = string
}

variable "cluster_version" {
  type    = string
  default = "1.17"
}

variable "tags" {
  type = map(string)
}

variable "asg_arns" {
  type = list(string)
}

variable "vpc" {
  type = object({
    vpc_id          = string
    private_subnets = list(string)
  })
}

variable "security_groups" {
  type = object({
    cluster_sg_id = string
  })
}


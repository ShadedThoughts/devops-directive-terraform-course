variable "vpc_id" {
  description = "Value of the VPC Identifier"
  type        = string
  default     = "vpc-0341b7d5c859d70f9"
}

variable "subnet_id" {
  description = "Value of the Public Subnet Identifier"
  type = string
  default = "subnet-007fca2f16931423e"
}

variable "security_group_id" {
  description = "Lab VPC security group for EC2"
  type = string
  default = "sg-0692d3fea06876203"
}

variable "aws_lb_sg_id" {
  description = "Security group for AWS load balancer"
  type = string
  default = "sg-04a8f79ad552f387b"
}

variable "subnet2_id" {
  description = "ID for public subnet 2"
  type = string
  default = "subnet-0d55a6b04de17cd0c"
}
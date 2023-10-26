# General Variables

variable "region" {
  description = "Default region for provider"
  type        = string
  default     = "eu-west-2"
}

variable "app_name" {
  description = "Name of the web application"
  type        = string
  default     = "web-app"
}

variable "environment_name" {
  description = "Deployment environment (dev/staging/production)"
  type        = string
  default     = "dev"
}

# EC2 Variables

variable "ami" {
  description = "Amazon machine image to use for ec2 instance"
  type        = string
  default     = "ami-0505148b3591e4c07" # Ubuntu 20.04 LTS // us-east-1
}

variable "instance_type" {
  description = "ec2 instance type"
  type        = string
  default     = "t2.micro"
}

# S3 Variables

variable "bucket_prefix" {
  description = "prefix of s3 bucket for app data"
  type        = string
}

# Route 53 Variables

variable "create_dns_zone" {
  description = "If true, create new route53 zone, if false read existing route53 zone"
  type        = bool
  default     = false
}

variable "domain" {
  description = "Domain for website"
  type        = string
}

# RDS Variables

variable "db_name" {
  description = "Name of DB"
  type        = string
}

variable "db_user" {
  description = "Username for DB"
  type        = string
}

variable "db_pass" {
  description = "Password for DB"
  type        = string
  sensitive   = true
}

## VPC - SUBNETS - SECURITY GROUPS 
variable "vpc_id" {
  description = "Value of the VPC Identifier"
  type        = string
  default     = "vpc-0341b7d5c859d70f9"
}

variable "subnet_id" {
  description = "Value of the Public Subnet Identifier"
  type        = string
  default     = "subnet-007fca2f16931423e"
}

variable "security_group_id" {
  description = "Lab VPC security group for EC2"
  type        = string
  default     = "sg-0692d3fea06876203"
}

variable "aws_lb_sg_id" {
  description = "Security group for AWS load balancer"
  type        = string
  default     = "sg-04a8f79ad552f387b"
}

variable "subnet2_id" {
  description = "ID for public subnet 2"
  type        = string
  default     = "subnet-0d55a6b04de17cd0c"
}

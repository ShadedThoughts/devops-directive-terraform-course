terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "aws_ec2" {
  ami           = "ami-0505148b3591e4c07" # Ubuntu 20.04 LTS // us-east-1
  instance_type = "t2.micro"
}

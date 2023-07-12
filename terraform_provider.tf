#Terraform settings block
terraform {
  required_version = "~> 1.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 4.0"

    }
  }
}

provider "aws" {
  region = "ap-southeast-1"
  access_key = "AKIA4IPT2Y34776VAAND"
  secret_key = "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"
}

resource "aws_instance" "ec2demo"  {
  ami       =  "ami-06b79cf2aee0d5c92"
  instance_type = "t2.micro"
  
        user_data = file("maven-install.sh")
  tags = {
    Name = "maven_node"
  }
}

terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "5.54.1"
    }
  }
}
resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}

variable "instances" {
  default = {
    forntend = {
      instance_type = "t3.small"
    }

    catalogue = {
      instance_type = "t3.small"
    }
  }
}


resource "aws_instance" "web" {
  for_each = var.instances
  ami = ""
  instance_type = each.value["instance_type"]

  tags = {
    Name = each.key
  }
}
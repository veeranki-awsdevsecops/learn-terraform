terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
resource "null_resource" "dummy" {
  count = 10
}

provider "aws" {}

variable "instances" {
  default = ["frontend", "catalogue"]
}

resource "aws_intance" "web" {
  count = length(var.instances)
  ami  = "ami-0220d79f3f480ecf5"
  instance_type = "t3.micro"

  tags = {

    Name = var.instances[count.index]
  }
}
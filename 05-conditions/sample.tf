terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.2.2"
    }
  }
}
variable "instance_type" {}
resource "aws_instance" "web" {

  ami  = "ami-0220d79f3f480ecf5"
  instance_type = var.instance_type == "" ? "t3.micro" : var.instance_type

  tags = {
    Name = sample
  }
}

# Conditions
# Strings -     ==, !=
# Numbers -     == , !=, >, >=, <, <=
# Boolean -     (var.boolean ? true_val : false_val )

# condition can also be used in cases to determine whether to create a resource or not.
resource "null_resource" "test" {
  count = var.input == "" ? 0 : 1
}

variable "input" {}
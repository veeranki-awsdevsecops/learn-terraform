variable "x1" {
  default = "abc"
}

output "x1" {
  # variable var.x1 for the direct variable usage.
  value = var.x1
}

output "x11" {
  # Variable var.x1 is with combination of a string then ${}
    value = "Value of the x1 is ${var.x1}"
}

# x1 = abc   # shell
# x1: abc    # Ansible

# Data Types
# String, need to be given in double quotes
# number, No need of quote.
# Boolean, No need to quote.

variable "string1" {
  default = "abc"
}

variable "number1" {
  default = "abc"
}

variable "number2" {
  default = "abc"
}

# true or false is supported ( Ansible supports Yes or No)
variable "boolean1" {
  default = true
}

# Variable Types
# Plain
# List
# Map / Dict

variable "plain1" {
  default = "abc"
}

variable "list1" {
  default = ["abc", 123, true]
}

variable "map1" {
  default = {
    name = "devops"
    skill = "awsdevops"
  }
}

# How retrieve values
output "list1_value1" {
  value = var.list1[0]
}

output "map1_name" {
  value = var.map1["name"]
}

variable "x2" {}





# x1 = abc   #shell
# x1: abc    #Ansible

variable "x1" {
  default = "abc"
}

output "x1" {
  value = var.x1                                  # variable var.x1 for the direct variable usage.
}

output "x11" {
  value = "Value of the x1 is ${var.x1}"          # Variable var.x1 is with combination of a string then ${}
}
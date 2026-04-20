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
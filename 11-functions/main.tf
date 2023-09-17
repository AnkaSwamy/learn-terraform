variable "class"{
  default= "devops"
}
#print the same in capital letters

#output "class"{
#  value=upper(var.class)
#}

output "class"{
  value=var.class
}

variable "fruits"{
  default = ["apple","banana","orange"]
}
output "fruits"{
  value = length(var.fruits)

}
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

variable "classes" {
  default = {
    devops={
      name="devops"
      topics=["jenkins", "docker"]
    }
    aws={
      name="aws"
    }
  }
}

output "devops_topics" {
  value= var.classes["devops"] ["topics"]
}
output "aws_topics" {
  value= lookup(var.classes,"aws",null)
}
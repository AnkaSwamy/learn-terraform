variable "sample" {
default = 100
}
variable "sample1" {
default = "HelloWorld"
}
variable "sample-ext" {
default = "HelloUniverse"
}
output "sample" {
value= var.sample
}
output "sample1" {
value= var.sample1
}
output "sample-ext" {
value= "value of sample-ext - ${var.sample-ext}"
}


# plain
variable "course" {
default = "Devops training"
}

#List
variable "courses" {
default= [
"Devopsmain",
"docker"
]
}
#Map

variable "course_details" {
default= {
Devops= {
name= "devops"
timings= "7AM"
duration= "90days"
}
AWS= {
name = "aws"
time= "8pm"
duration= 99
}
}
}

output "course" {
value= var.course
}
output "courses" {
value= var.courses
}
output "course_details" {
value= var.courses_details[ "Devops" ]
}
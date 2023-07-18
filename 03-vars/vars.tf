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

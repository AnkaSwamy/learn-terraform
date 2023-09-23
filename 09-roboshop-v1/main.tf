module "frontend" {
  source = "./ec2"
  name = "frontend"
}
variable "instances"{
  default={
    frontend= {}
    mongodb= {}
    catalogue= {}
    redis= {}
    cart= {}
    user= {}
    mysql= {}
    shipping= {}
    rabbitmq = {}
    payment= {}

  }
}
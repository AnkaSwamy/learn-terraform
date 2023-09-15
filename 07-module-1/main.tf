module "test1" {
  source = "./ec2"
  name = "test1"
}

module "test2" {
  source = "./ec2"
  name = "test2"
}

output "public_ip_test1" {
  value = module.test1.public_ip
}

output "public_ip_test2" {
  value = module.test2.public_ip
}
module "node1" {
  source = "./ec2"
  name = "node1"
}

module "node2" {
  source = "./ec2"
  name = "node2"
}

output "public_ip_node1" {
  value = module.node1.public_ip
}

output "public_ip_node2" {
  value = module.node2.public_ip
}
output "app_public_ip" {
  value = module.ec2.app_public_ip
}

output "tools_public_ip" {
  value = module.ec2.tools_public_ip
}

output "bastion_pvt_ip" {
  value = module.bastion_instance.private_ip
}

output "bastion_sg_id" {
  value = module.bastion_security_group.sg_id
}

output "bastion_instance_id" {
  description = "The ID of the bastion EC2 instance"
  value       = module.bastion_instance.instance_id
}

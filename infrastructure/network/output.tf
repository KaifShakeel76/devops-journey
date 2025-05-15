output "public_subnet_ids" {
  value = module.vpc.public_subnet_ids
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "pvt_subnet_ids" {
  value = module.vpc.pvt_subnet_ids
}

##################
output "protected_subnet_ids" {
  description = "List of Protected Subnet IDs"
  value       = module.vpc.protected_subnet_ids
}

output "route53_zone_id" {
  value = module.vpc.route53_zone_id
}

output "route53_name" {
  value = module.vpc.route53_zone_id
}

vpc_name                         = "spectatr-staging-vpc"
igw_name                         = "spectatr-staging-igw"
pub_rt_name                      = "spectatr-staging-pub"
pub_subnet_name                  = "spectatr-staging-pub-subnet"
nat_name                         = "spectatr-staging-nat"
pvt_rt_ame                       = "spectatr-staging-pvt"
pvt_subnet_name                  = "spectatr-staging-pvt-subnet"
enable_pub_alb_resource          = false
pvt_zone_name                    = "spectatr-staging.internal"
enable_aws_route53_zone_resource = "true"
alb_name                         = ""
cidr_block                       = "192.168.0.0/16"
availability_zones               = ["a", "b", "c"]
public_subnets_cidr              = ["192.168.0.0/24", "192.168.1.0/24", "192.168.2.0/24"]
private_subnets_cidr             = ["192.168.4.0/22", "192.168.8.0/22", "192.168.12.0/22", "192.168.16.0/22", "192.168.20.0/22", "192.168.24.0/22"]
logs_bucket                      = ""
logs_bucket_arn                  = ""
public_web_sg_name               = ""
region                           = "ap-south-1"
tags = {
  "Product" = "spectatr"
  "Owner"   = "devops"
  "Env"     = "staging"
}

alb_certificate_arn = ""

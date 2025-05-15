vpc_name                         = "staging-vpc"
igw_name                         = "staging-igw"
pub_rt_name                      = "staging-pub"
pub_subnet_name                  = "staging-pub-subnet"
nat_name                         = "staging-nat"
pvt_rt_ame                       = "staging-pvt"
pvt_subnet_name                  = "staging-pvt-subnet"
enable_pub_alb_resource          = false
pvt_zone_name                    = "staging.internal"
enable_aws_route53_zone_resource = "true"
alb_name                         = ""
cidr_block                       = "Add your cidr block"
availability_zones               = ["a", "b", "c"]
public_subnets_cidr              = ["subnet -1 cidr", "subnet -2 cidr", "subnet -3 cidr"]
private_subnets_cidr             = ["subnet -4 cidr", "subnet -5 cidr", "subnet -6 cidr", "subnet -7 cidr", "subnet -8 cidr", "subnet -9 cidr"]
logs_bucket                      = ""
logs_bucket_arn                  = ""
public_web_sg_name               = ""
region                           = "ap-south-1"
tags = {
  "Owner"   = "devops"
  "Env"     = "staging"
}

alb_certificate_arn = ""

region        = "ap-south-1"
ec2_name      = "bastion"
ami_id        = "ami-001205fc8f16100ae"
env           = "staging"
volume_type   = "gp3"
instance_type = "t3a.medium"
volume_size   = "8"
tags = {
  "Name"    = "staging-bastion"
  "Owner"   = "devops"
  "Env"     = "staging"
}

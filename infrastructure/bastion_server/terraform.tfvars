region        = "ap-south-1"
ec2_name      = "bastion"
ami_id        = "ami-001205fc8f16100ae"
env           = "staging"
volume_type   = "gp3"
instance_type = "t3a.medium"
volume_size   = "8"
tags = {
  "Name"    = "spectatr-staging-bastion"
  "Product" = "spectatr"
  "Owner"   = "devops"
  "Env"     = "staging"
}
public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCt2J6NL67hmLNyNq/72qv0uCxlT3bI7qUIbG0m/54kqnpMOxNiU1Vlz15+I3BKWTW/DnJdpkuRBekUiHGaV6hbKvLsyZE9TtNAijn+fr0SPQ2Xg5cL5ApK3JWnrtw31KpJZx087PKc9qMlEVzgITWe7tUiPGoYCGBM2awtBeAuRWP4gwSNHwNcWfpU1hsy8igvimCRacZUdsy3QHUwb9+kerfg8xgm5CHi/VKu9S6JBICaQ0jsCO0+l9FzqAFJc6P7RIlJcVFdkkwPYPXDMBIEVCM8/GuBOrsZ5NgRns7PFnsrUY5eZs79Dm+wpsbdLSRvsoq2/mMAHFLkemGNxRbbhfjxG4dVgMpcbt9/wzF6/KRF4ICho8QFocC3i63DW6bO2zl/PpsF1oxbh43YI7Zz1m69cDSV6uyqAUCRLAydfOR4VqoKB9D2renn9teUePmAYHboT0Q3B3FIBvD0tX95XzNjKn6q2jecJVuWEd/FpbqL9oUMF2wN5ABHKhnM648= opstree@opstree-Latitude-3410 "



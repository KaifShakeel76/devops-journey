resource "aws_key_pair" "bastion-pem" {
  key_name   = format("%s-bastion-key", "${var.env}")
  public_key = var.public_key
}

module "bastion_instance" {
  source               = "OT-CLOUD-KIT/ec2-instance/aws"
  version              = "0.0.3"
  ec2_name             = var.ec2_name
  tags                 = var.tags
  instance_type        = var.instance_type
  key_name             = aws_key_pair.bastion-pem.key_name
  volume_size          = var.volume_size
  subnet               = data.terraform_remote_state.network.outputs.public_subnet_ids[0][0]
  security_groups      = [module.bastion_security_group.sg_id]
  ami_id               = var.ami_id
  volume_type          = var.volume_type
  public_ip            = true
  encrypted_volume     = true
  iam_instance_profile = aws_iam_instance_profile.bastion_instance_profile.name
}

module "bastion_security_group" {
  source                             = "OT-CLOUD-KIT/security-groups/aws"
  version                            = "1.0.0"
  enable_whitelist_ip                = true
  name_sg                            = format("%s-bastion-sg", "${var.env}")
  vpc_id                             = data.terraform_remote_state.network.outputs.vpc_id
  enable_source_security_group_entry = false
  ingress_rule = {
    rules = {
      rule_list = [
        {
          description  = "Rule for port vpn IP"
          from_port    = 22
          to_port      = 22
          protocol     = "tcp"
          cidr         = ["0.0.0.0/0"]
          source_SG_ID = []
        }
      ]
    }
  }
}

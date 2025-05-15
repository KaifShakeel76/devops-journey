variable "region" {
  type        = string
  description = "Region"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for subnets"
}

variable "enable_pub_alb_resource" {
  type        = bool
  description = "enable_pub_alb_resource"
  default     = false
}

variable "pvt_zone_name" {
  description = "Private zone name"
  type        = string
  default     = ""
}

variable "enable_vpc_logs" {
  description = "Enable VPC logs"
  type        = bool
  default     = false
}

variable "enable_protected_subnet" {
  description = "Enable protected subnet"
  type        = bool
  default     = false
}

variable "enable_aws_route53_zone_resource" {
  description = "Enable AWS Route53 zone resource"
  type        = bool
  default     = false
}


variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
}

variable "public_subnets_cidr" {
  description = "CIDR list for public subnet"
  type        = list(string)
}

variable "private_subnets_cidr" {
  description = "CIDR list for private subnet"
  type        = list(string)
}


variable "logs_bucket" {
  description = "Name of bucket where we would be storing our logs"
  type        = string
}

variable "tags" {
  description = "Additional tags for the VPC"
  type        = map(string)
}

variable "public_web_sg_name" {
  description = "public web security group name"
  type        = string
}

variable "alb_certificate_arn" {
  description = "Cretificate arn for alb"
  type        = string
}

variable "logs_bucket_arn" {
  description = "Name of bucket where we would be storing our logs"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC to be created"
  type        = string
}

variable "igw_name" {
  type        = string
  description = "Internet Gateway name"
}

variable "pub_rt_name" {
  type        = string
  description = "Public route table name"
}

variable "pub_subnet_name" {
  type        = string
  description = "public subnet name"
}

variable "nat_name" {
  type        = string
  description = "Name of Nat Gateway"
}

variable "pvt_rt_ame" {
  type        = string
  description = "Name of Pvt Rpoute table"
}

variable "pvt_subnet_name" {
  type        = string
  description = "Name of private subnets"
}

variable "alb_name" {
  type        = string
  description = "Name of ALB"
}

######################protected-subnet
variable "protected_subnets_cidr" {
  type        = list(string)
  description = "List of CIDR blocks for the protected subnets"
  default     = []
}

variable "protected_subnet_name" {
  type        = string
  description = "Name tag for the protected subnet"
  default     = ""
}

variable "protected_rt_name" {
  type        = string
  description = "Name tag for the protected route table"
  default     = ""
}

variable "protected_nacl_inbound_rules" {
  type = map(object({
    rule_number = number
    protocol    = string
    action      = string
    cidr_block  = string
    from_port   = optional(number) # Optional
    to_port     = optional(number) # Optional
  }))
  default = {}
}

variable "protected_nacl_outbound_rules" {
  type = map(object({
    rule_number = number
    protocol    = string
    action      = string
    cidr_block  = string
    from_port   = optional(number) # Optional
    to_port     = optional(number) # Optional
  }))
  default = {}
}

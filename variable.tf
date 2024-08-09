variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "instance_tenancy" {
  description = "The instance tenancy option for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "The name of the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR blocks for public subnets"
  type        = list(string)
}

variable "public_sub_az" {
  description = "The availability zones for public subnets"
  type        = list(string)
}

variable "map_public_ip_on_launch" {
  description = "Whether to map a public IP on launch"
  type        = bool
}

variable "public_subnet_name" {
  description = "The name of the public subnet"
  type        = string
}

variable "public_subnet_tags" {
  description = "Tags for the public subnets"
  type        = map(string)
}

variable "private_subnet_cidr" {
  description = "The CIDR blocks for private subnets"
  type        = list(string)
}

variable "private_sub_az" {
  description = "The availability zones for private subnets"
  type        = list(string)
}

variable "private_subnet_tags" {
  description = "Tags for the private subnets"
  type        = list(map(string))
}

variable "igw_name" {
  description = "The name of the internet gateway"
  type        = string
}

variable "elasticip_name" {
  description = "The name of the Elastic IP"
  type        = string
}

variable "public_rt_tag" {
  description = "Tags for the public route table"
  type        = list(map(string))
}

variable "private_rt_tag" {
  description = "Tags for the private route table"
  type        = list(map(string))
}

variable "public_nacl_ingress_rules" {
  description = "Ingress rules for the public NACL"
  type        = list(map(string))
}

variable "public_nacl_egress_rules" {
  description = "Egress rules for the public NACL"
  type        = list(map(string))
}

variable "public_nacl_tags" {
  description = "Tags for the public NACL"
  type        = map(string)
}

variable "frontend_nacl_ingress_rules" {
  description = "Ingress rules for the frontend NACL"
  type        = list(map(string))
}

variable "frontend_nacl_egress_rules" {
  description = "Egress rules for the frontend NACL"
  type        = list(map(string))
}

variable "frontend_nacl_tags" {
  description = "Tags for the frontend NACL"
  type        = map(string)
}

variable "application_nacl_ingress_rules" {
  description = "Ingress rules for the application NACL"
  type        = list(map(string))
}

variable "application_nacl_egress_rules" {
  description = "Egress rules for the application NACL"
  type        = list(map(string))
}

variable "application_nacl_tags" {
  description = "Tags for the application NACL"
  type        = map(string)
}

variable "database_nacl_ingress_rules" {
  description = "Ingress rules for the database NACL"
  type        = list(map(string))
}

variable "database_nacl_egress_rules" {
  description = "Egress rules for the database NACL"
  type        = list(map(string))
}

variable "database_nacl_tags" {
  description = "Tags for the database NACL"
  type        = map(string)
}

variable "alb_sg_name" {
  description = "The name of the ALB security group"
  type        = list(string)
}

variable "alb_sg_tag" {
  description = "Tags for the ALB security group"
  type        = map(string)
}

variable "alb_ingress_rule" {
  description = "List of ingress rules for ALB security group"
  type        = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = list(string)
  }))
}

variable "alb_egress_rule" {
  description = "List of egress rules for ALB security group"
  type        = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = list(string)
    ipv6_cidr_blocks = list(string)
  }))
}

variable "alb_name" {
  description = "The names of the ALBs"
  type        = list(string)
}

variable "alb_internal" {
  description = "Whether the ALB is internal or external"
  type        = bool
}

variable "alb_balancer_type" {
  description = "The type of ALB (application/network)"
  type        = list(string)
}

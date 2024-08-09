module "network_skeleton" {
  source = "github.com/mygurkulam-p9/Terrform_Module.git//network-skeleton?ref=network-skeleton"

  vpc_cidr_block           = var.vpc_cidr_block
  instance_tenancy         = var.instance_tenancy
  vpc_name                 = var.vpc_name
  public_subnet_cidr       = var.public_subnet_cidr
  public_sub_az            = var.public_sub_az
  map_public_ip_on_launch  = var.map_public_ip_on_launch
  public_subnet_name       = var.public_subnet_name
  public_subnet_tags       = var.public_subnet_tags
  private_subnet_cidr      = var.private_subnet_cidr
  private_sub_az           = var.private_sub_az
  private_subnet_tags      = var.private_subnet_tags
  igw_name                 = var.igw_name
  elasticip_name           = var.elasticip_name
  public_rt_tag            = var.public_rt_tag
  private_rt_tag           = var.private_rt_tag

  public_nacl_ingress_rules = var.public_nacl_ingress_rules
  public_nacl_egress_rules  = var.public_nacl_egress_rules
  public_nacl_tags          = var.public_nacl_tags

  frontend_nacl_ingress_rules = var.frontend_nacl_ingress_rules
  frontend_nacl_egress_rules  = var.frontend_nacl_egress_rules
  frontend_nacl_tags          = var.frontend_nacl_tags

  application_nacl_ingress_rules = var.application_nacl_ingress_rules
  application_nacl_egress_rules  = var.application_nacl_egress_rules
  application_nacl_tags          = var.application_nacl_tags

  database_nacl_ingress_rules = var.database_nacl_ingress_rules
  database_nacl_egress_rules  = var.database_nacl_egress_rules
  database_nacl_tags          = var.database_nacl_tags

  alb_sg_name              = var.alb_sg_name
  alb_sg_tag               = var.alb_sg_tag

  alb_ingress_rule         = var.alb_ingress_rule
  alb_egress_rule          = var.alb_egress_rule

  alb_name                 = var.alb_name
  alb_internal             = var.alb_internal
  alb_balancer_type        = var.alb_balancer_type
}

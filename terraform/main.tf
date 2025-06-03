provider "aws" {
  region = var.aws_region
}

module "eks" {
  source = "./modules/eks"

  cluster_name        = var.cluster_name
  subnet_ids          = module.vpc.public_subnet_ids
  node_desired_capacity = var.node_desired_capacity
  node_min_size       = var.node_min_size
  node_max_size       = var.node_max_size
  instance_types      = var.instance_types
}

module "vpc" {
  source = "./modules/vpc"
  cidr_block = var.cidr_block
  vpc_name = var.vpc_name
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones = var.availability_zones
  ecs_sg_name           = "prod-ecs-sg"
}

module "argocd" {
  source = "./modules/argocd"
}

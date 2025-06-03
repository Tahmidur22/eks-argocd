aws_region          = "us-east-1"
cluster_name        = "prod-eks-cluster"
node_desired_capacity = 3
node_min_size       = 2
node_max_size       = 4
instance_types      = ["t3.medium"]

# VPC & Networking
vpc_name                    = "ptm-vpc"
cidr_block                  = "10.0.0.0/16"
public_subnet_cidrs         = ["10.0.1.0/24", "10.0.2.0/24"]
availability_zones          = ["us-east-1a", "us-east-1b"]


variable "vpc_cidr" {
  default     = "10.0.0.0/16"
  description = "default CIDR range of the VPC"
}

variable "vpc_name" {
  type        = string
  description = "The name tag for the VPC"
}

variable "cidr_block" {
  type = string
}
variable "public_subnet_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks for public subnets"
}
variable "availability_zones" {
  type        = list(string)
  description = "The availability zones for the subnets"
}


variable "aws_region" {
  description = "AWS Region to deploy in"
  type        = string
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "my-eks-cluster"
}


variable "node_desired_capacity" {
  description = "Desired number of nodes in node group"
  type        = number
  default     = 2
}

variable "node_min_size" {
  description = "Minimum number of nodes in node group"
  type        = number
  default     = 1
}

variable "node_max_size" {
  description = "Maximum number of nodes in node group"
  type        = number
  default     = 3
}

variable "instance_types" {
  description = "EC2 instance types for nodes"
  type        = list(string)
  default     = ["t3.medium"]
}

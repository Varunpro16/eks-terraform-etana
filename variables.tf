# variables.tf

###############################################################################
# AWS Provider Configuration
###############################################################################
variable "region" {
  description = "AWS Region"
  type        = string
}

###############################################################################
# EKS Cluster Configuration
###############################################################################

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

###############################################################################
# VPC Configuration
###############################################################################

variable "private_subnets" {
  description = "Private subnets for the VPC"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets for the VPC"
  type        = list(string)
}

#variable "intra_subnets" {
# description = "Intra subnets for the VPC"
#  type        = list(string)
#}

###############################################################################
# EKS Node Group Configuration
###############################################################################

variable "min_size" {
  description = "Minimum size of the node group"
  type        = number
}

variable "max_size" {
  description = "Maximum size of the node group"
  type        = number
}

variable "desired_size" {
  description = "Desired size of the node group"
  type        = number
}

variable "instance_types" {
  description = "EC2 instance types for the node group"
  type        = list(string)
}


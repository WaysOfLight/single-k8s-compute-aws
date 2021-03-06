variable "aws_region" {
  description = "Region where Cloud Formation is created"
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the AWS Minikube cluster - will be used to name all created resources"
}

variable "tags" {
  description = "Tags used for the AWS resources created by this template"
  type        = map(string)
}

variable "project" {
  description = "Tags used for the AWS resources created by this template"
  type        = string
}

variable "team" {
  description = "Tags used for the AWS resources created by this template"
  type        = string
}

variable "environment" {
  description = "Tags used for the AWS resources created by this template"
  type        = string
}

variable "addons" {
  description = "list of YAML files with Kubernetes addons which should be installed"
  type        = list(string)
}

variable "aws_instance_type" {
  description = "Type of instance"
  default     = "t2.medium"
}

variable "aws_subnet_id" {
  description = "The subnet-id to be used for the instance"
}

variable "vpc_id" {
  description = "The vpc to be used for the subnets"
}

# variable "ssh_public_key" {
#   description = "Path to the pulic part of SSH key which should be used for the instance"
#   type        = string
#   default     = "~/.ssh/id_rsa.pub"
# }

variable "key_name" {
  description = "SSH key name to enable access to instance - already cleated on AWS"
  type        = string
  # default     = "genji-access-key-ec2"
}

variable "hosted_zone" {
  description = "Hosted zone to be used for the alias"
}

variable "hosted_zone_private" {
  description = "Is the hosted zone public or private"
  default     = false
}

variable "ami_image_id" {
  description = "ID of the AMI image which should be used. If empty, the latest CentOS 7 image will be used. See README.md for AMI image requirements."
  default     = ""
}

variable "ssh_access_cidr" {
  description = "CIDR from which SSH access is allowed"
  type = string
  default     = "0.0.0.0/0"
}

variable "api_access_cidr" {
  description = "CIDR from which API access is allowed"
  type = string
  default     = "0.0.0.0/0"
}
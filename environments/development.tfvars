# AWS region where should the Minikube be deployed
aws_region = "us-east-1"

# Name for role, policy and cloud formation stack (without DBG-DEV- prefix)
cluster_name = "minikube"

# Instance type
aws_instance_type = "t3a.large"

# AMI image to use (if empty or not defined, latest CentOS 7 will be used)
ami_image_id = "ami-00e87074e52e6c9f9"

# SSH key for the machine
ssh_public_key = "~/.ssh/id_rsa.pub"

# DNS zone where the domain is placed
hosted_zone         = "<r53-route>"
hosted_zone_private = false

# Network used to deploy the instance
vpc_id    = "<vpc_id>"
# Subnet ID where the minikube should run
aws_subnet_id = "<subnet>"

# CIDR blocks to allow access to cluster
ssh_access_cidr = "0.0.0.0/0"
api_access_cidr = "0.0.0.0/0"

# Key to access via ssh the instance
environment = "development"
team        = "devops"
project     = "<project>"

# Tags
tags = {
  Application = "Minikube"
}

# Kubernetes Addons
# Supported addons:
# 
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/heapster.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/ingress.yaml (External ELB load balancer)
# https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/ingress-internal.yaml (Internal ELB loadbalancer)

addons = [
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/storage-class.yaml",
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/metrics-server.yaml",
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/dashboard.yaml",
  "https://raw.githubusercontent.com/scholzj/terraform-aws-minikube/master/addons/external-dns.yaml"
]
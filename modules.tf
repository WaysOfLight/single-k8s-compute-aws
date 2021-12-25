module "minikube" {
  source = "./modules/minikube"

  cluster_name        = "${var.cluster_name}-${var.project}"
  vpc_id              = var.vpc_id
  environment         = var.environment
  team                = var.team
  project             = var.project
  aws_region          = var.aws_region
  aws_instance_type   = var.aws_instance_type
  key_name            = var.key_name
  ssh_public_key      = var.ssh_public_key
  aws_subnet_id       = var.aws_subnet_id
  hosted_zone         = var.hosted_zone
  hosted_zone_private = var.hosted_zone_private
  ami_image_id        = var.ami_image_id
  tags                = var.tags
  addons              = var.addons
}
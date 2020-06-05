provider "aws" {
  profile = var.aws_profile
  region  = var.aws_region
  version = "~> 2.65"
}

module "ecs" {
  source = "./ecs_cluster"
}

output "cluster_ARN" {
  value = "${module.ecs.cluster_ARN}"
}

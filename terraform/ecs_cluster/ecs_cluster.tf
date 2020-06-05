resource "aws_ecs_cluster" "my_test_cluster" {
  name = var.ecs_cluster_name
}

output "cluster_ARN" {
  value = aws_ecs_cluster.my_test_cluster.arn
}

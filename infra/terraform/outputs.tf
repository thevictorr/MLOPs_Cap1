output "alb_dns_name" {
  description = "DNS publico do Application Load Balancer."
  value       = aws_lb.app.dns_name
}

output "app_url" {
  description = "URL base da aplicacao publicada."
  value       = "http://${aws_lb.app.dns_name}"
}

output "healthcheck_url" {
  description = "URL de health check da aplicacao."
  value       = "http://${aws_lb.app.dns_name}/health"
}

output "ecr_repository_url" {
  description = "URL do repositorio ECR para push da imagem."
  value = data.aws_ecr_repository.app.repository_url

}

output "ecs_cluster_name" {
  description = "Nome do cluster ECS."
  value       = aws_ecs_cluster.app.name
}

output "ecs_service_name" {
  description = "Nome do servico ECS."
  value       = aws_ecs_service.app.name
}

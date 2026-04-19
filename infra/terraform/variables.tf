variable "aws_region" {
  description = "Regiao AWS onde a infraestrutura sera criada."
  type        = string
  default     = "sa-east-1"
}

variable "project_name" {
  description = "Nome base do projeto."
  type        = string
  default     = "mlops-cap1"
}

variable "environment" {
  description = "Ambiente da aplicacao."
  type        = string
  default     = "dev"
}

variable "image_tag" {
  description = "Tag da imagem Docker publicada no ECR."
  type        = string
  default     = "latest"
}

variable "container_port" {
  description = "Porta exposta pela aplicacao no container."
  type        = number
  default     = 8080
}

variable "desired_count" {
  description = "Numero desejado de tasks no ECS Service."
  type        = number
  default     = 1
}

variable "task_cpu" {
  description = "CPU minima suportada pelo AWS Fargate."
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memoria minima suportada pelo AWS Fargate."
  type        = number
  default     = 512
}


variable "fargate_microservices" {
  description = "Map of variables to define a Fargate microservice."
  type = map(object({
    name                   = string
    task_definition        = string
    desired_count          = string
    launch_type            = string
    security_group_mapping = string
  }))

variable "ecs_tasks" {
  description = "Map of variables to define an ECS task."
  type = map(object({
    family               = string
    container_definition = string
    cpu                  = string
    memory               = string
    container_port       = string
  }))
}

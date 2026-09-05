variable "instance_type" {
  description = "Typ instancji dla środowiska dev"
  type        = string
  default     = "t3.micro"
}

variable "enable_monitoring" {
  description = "Czy monitoring jest włączony"
  type        = bool
  default     = false
}
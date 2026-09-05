variable "name" {
  description = "Nazwa symulowanego serwera"
  type        = string

  validation {
    condition     = length(var.name) >= 3
    error_message = "Nazwa serwera musi mieć co najmniej 3 znaki."
  }
}

variable "instance_type" {
  description = "Symulowany typ instancji EC2"
  type        = string
  default     = "t3.micro"

  validation {
    condition = contains(
      ["t3.micro", "t3.small", "t3.medium"],
      var.instance_type
    )

    error_message = "Dozwolone typy to t3.micro, t3.small i t3.medium."
  }
}

variable "environment" {
  description = "Nazwa środowiska"
  type        = string

  validation {
    condition = contains(
      ["dev", "test", "prod"],
      var.environment
    )

    error_message = "Środowisko musi mieć wartość dev, test albo prod."
  }
}

variable "enable_monitoring" {
  description = "Czy monitoring ma być włączony"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Dodatkowe tagi serwera"
  type        = map(string)
  default     = {}
}
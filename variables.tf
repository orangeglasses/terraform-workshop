variable "string" {
  description = "A variable in terraform without a type definition is automaticly a string"
}

variable "number" {
  type        = number
  default     = 1
  description = "It's good practice to add a description to a variable"
}

variable "input_required" {
  type        = string
  default     = "asdf"
  description = "Try to fill this one from another place not using default"
}

variable "object" {
  type = object({
    complex = object({
      id   = number
      name = string
    })
    servers = list(string)
  })
  description = "Try to fill this object from the tfvars"
  validation {
    condition     = var.object.complex.id > 35 && var.object.complex.id < 1000 && length(var.object.servers) > 3 && endswith(var.object.name, "suffix")
    error_message = "Not valid just yet"
  }
}
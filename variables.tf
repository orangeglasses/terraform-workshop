variable "string" {
  description = "A variable in terraform without a type definition is automaticly a string"
}

variable "number" {
  type = number
  default = 1
  description = "It's good practice to add a description to a variable"
}

variable "input_required" {
  type = string
  description = "Try to fill this one from another place not using default"
}
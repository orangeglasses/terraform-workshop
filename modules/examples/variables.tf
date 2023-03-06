variable "optional" {
  type = object({
    test               = string
    not_needed         = optional(string)
    defaulted_optional = optional(number, 42)
  })
}
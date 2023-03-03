plugin "terraform" {
  preset = "recommended"
}

rule "terraform_naming_convention" {
  enabled = true
  custom = "^[a-zA-Z]+([_-][a-zA-Z]+)*$"
}

rule "terraform_required_providers" {
  enabled = true
}

locals {
  template_vars = {
    test   = "value of the test var"
    random = random_string.not_so_secret.result
    object = {
      inside = "string inside the object"
    }
  }
}
resource "random_password" "secret" {
  length = 20
}

resource "random_string" "not_so_secret" {
  length = 20
}

resource "local_file" "templated" {
  filename = "template.txt"
  content  = templatefile("${path.module}/resources/template.txt", local.template_vars)
}

resource "random_string" "splat" {
  count  = 5
  length = 5
}

resource "local_file" "splat" {
  filename = "splat.txt"
  content  = join(", ", random_string.splat[*].result)
}

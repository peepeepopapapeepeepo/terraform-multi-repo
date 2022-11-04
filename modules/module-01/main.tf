variable "input" {
  type = string
  default = "input-01"
}

resource "random_pet" "server" {
  length = 2
  prefix = "v2-module-01"
}

output "ret" {
  value = "${var.input} ==> ${random_pet.server.id}"
}
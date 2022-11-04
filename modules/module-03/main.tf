variable "input" {
  type = string
  default = "input-03"
}

resource "random_pet" "server" {
  length = 2
  prefix = "v2-module-03"
}

output "ret" {
  value = "${var.input} ==> ${random_pet.server.id}"
}
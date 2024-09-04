resource "random_pet" "name" {
  prefix = var.content["keys1"]
  separator = var.separator
}
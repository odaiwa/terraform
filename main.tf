resource "random_pet" "name" {
  prefix = var.prefies[0]
  separator = var.separator
}
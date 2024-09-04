resource "random_pet" "name" {
  prefix = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name1" {
  prefix = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name2" {
  prefix = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name3" {
  prefix = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name4" {
  prefix = var.content["key1"]
  separator = var.separator
}


resource "random_pet" "test" {
  prefix = var.name23
  separator = var.seperator1
}
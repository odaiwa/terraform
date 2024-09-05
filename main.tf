resource "random_pet" "name" {
  prefix    = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name1" {
  prefix    = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name2" {
  prefix    = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name3" {
  prefix    = var.content["key1"]
  separator = var.separator
}

resource "random_pet" "name4" {
  prefix    = var.content["key1"]
  separator = var.separator
  # prevent updates on the resource with defined attributes to ignore
  # i.e. if we changed the name in the remote provider we don't want tf to change it back to what we have in the resource or the provider file
  # in this case we don't want to change sperator
  lifecycle {
    ignore_changes = [ separator ]
  }
}

resource "random_pet" "test" {
  prefix    = var.name23
  separator = var.seperator1
  # tf will show an error message if the resource is deleted when having a change in the entity
  # will be deleted only it the command of tf destroy is used
  lifecycle {
    prevent_destroy = true
  }
}



resource "local_file" "pet" {
  filename = "./here.txt"
  content  = "the name generated from the prev setp ${random_pet.test.id}"
  depends_on = [ random_pet.test ]
  # ensures that the new reource will be created and then destroy the first one
  lifecycle {
    create_before_destroy = true
  }
}

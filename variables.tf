variable "separator" {
  default = "#"
}

variable "prefix" {
  default = "Pre"
}

variable "prefies" {
  default = ["stg", "dev", "prod"]
  type    = list # indexes 0 ,1 ,2
}

variable "content" {
  type = map
  default = {
    "key1": "value1"
    "key2": "value2"
  }
}

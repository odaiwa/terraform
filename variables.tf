variable "separator" {
  default = "#"
}

variable "prefix" {
  default = "Pre"
}

variable "prefies" {
  default = ["stg", "dev", "prod"]
  type    = list(string) # indexes 0 ,1 ,2
}

variable "content" {
  type = map(string)
  default = {
    "key1": "value1"
    "key2": "value2"
  }
}

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
    "key1" : "value1"
    "key2" : "value2"
  }
}

variable "string-list" {
  type    = list(string)
  default = ["value", "value1"]
}

variable "int-list" {
  type    = list(number)
  default = [1, 2]
}

variable "int-set" {
  type    = set(number)
  default = [1, 2]
}

variable "string-set" {
  type    = set(string)
  default = ["val1", "val2"]
}


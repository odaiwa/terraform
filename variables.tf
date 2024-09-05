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

variable "content-int" {
  type = map(number)
  default = {
    "key1" : 1
    "key2" : 2
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

variable "obj1" {
  type = object({
    name  = string
    color = string
    age   = number
    food  = list(string)
  })
  default = {
    age   = 2
    color = "azure"
    food  = ["machines", "vpcs", "clusters"]
    name  = "jenkins"
  }
}

variable "tuple1" {
  type = tuple([ string, number, bool ])
  default = [ "aws", 0, false ]
}

variable "name23" {
  type = number
}

variable "seperator1" {
  type = string
}

variable "file_names" {
  default = [
    "./f1.txt",
    "./f2.txt",
    "./f3.txt"
  ]
}

variable "file_names_set" {
 type = set(string)
  default = [
    "./f1.txt",
    "./f2.txt",
    "./f3.txt"
  ]
}
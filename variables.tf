variable "separator"{
    default = "#"
}

variable "prefix"{
    default = "Pre"
}

variable "prefies" {
  default = ["stg", "dev", "prod"]
  type = list # indexes 0 ,1 ,2
}
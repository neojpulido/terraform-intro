variable "bucket_name" {
  default = "tf-backend-terraform-platzi"
}

variable "acl" {
  default = "private"
}

variable "tags" {
    default = {
        Environment="Dev",
        CreateBy = "terraform"
    }
  
}
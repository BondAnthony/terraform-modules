variable "cidr_block" {
  type        = string
  description = "CIDR block of the virtual private cloud (VPC)"
}

variable "tags" {
  type        = map(string)
  description = "Map of strings that will be attached as tags to the resources"
}

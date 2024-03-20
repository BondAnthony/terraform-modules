variable "name" {
  type        = string
  description = "Name of the compute network to create"
  validation {
    condition     = can("[a-z]([-a-z0-9]*[a-z0-9])?", var.name)
    error_message = "The name must be 1-63 characters long, and comply with RFC1035."
  }
}

variable "auto_create_subnetworks" {
  type        = bool
  description = "When set to true, the network is created in auto subnet mode and it will create a subnet for each region automatically across the 10.128.0.0/9 address range."
  default     = false
}

variable "mtu" {
  type        = number
  description = "Maximum Transmission Unit in bytes, default value is 1460 bytes."
  default     = 1460
}

variable "routing_mode" {
  type        = string
  description = "The network-wide routing mode to use.Possible values are: REGIONAL, GLOBAL."
  validation {
    condition     = contains(["REGIONAL", "GLOBAL"], var.routing_mode)
    error_message = "The var: routing_mode must be one of: REGIONAL, GLOBAL."
  }
}

variable "rgname" {
  type        = string
  description = "rsg1"
}

variable "rglocation" {
  type        = string
  description = "terraform rglocation for vnet"
  default     = "east us"
}

variable "vnet" {
  type        = string
  default     = "vnet111"
  description = "terraform vnet"

}
variable "s1" {
  type        = string
  default     = "subnet1"
  description = "terraform subnetnet1"

}
variable "s2" {
  type        = string
  default     = "subnet2"
  description = "terraform subnetnet2"

}
variable "s3" {}

variable "lab_subnet" {
  description = "Secure Lab için kullanılacak alt ağ"
  type        = string
  default     = "10.10.10.0/24"
}

variable "lab_gateway" {
  description = "Secure Lab ağının ağ geçidi"
  type        = string
  default     = "10.10.10.1"
}

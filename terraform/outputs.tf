output "network_name" {
  description = "Oluşturulan Docker ağının adı"
  value       = docker_network.secure_lab_net.name
}

output "network_subnet" {
  description = "Ağın IP bloğu"
  value       = var.lab_subnet
}

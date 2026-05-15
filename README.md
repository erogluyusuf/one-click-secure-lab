#  One-Click Secure Lab Deployment (IaC)

This project is a conceptual study demonstrating how a secure network laboratory infrastructure can be fully automated from scratch using Infrastructure as Code (IaC) principles with **Terraform** and **Ansible**.

##  Architecture and Components
This infrastructure is designed to ensure that devices can access the internet in a secure, isolated, and controlled manner:
* **Terraform**: Provisioning of a private and isolated Docker bridge network.
* **Ansible**: Configuration management and automated deployment of services using Docker Compose templates.
* **WireGuard VPN**: Provides secure, encrypted remote access to the network through tunneling.
* **Pi-hole**: Network-level DNS filtering for blocking ads and malicious domains.
* **Suricata (IDS)**: Monitors network traffic at the host level to detect anomalies and potential threats (Intrusion Detection System).

##  Deployment
To deploy the system on any Linux environment with a single click, follow these steps:

**1. Prepare the Network Infrastructure (Terraform):** 
```bash
cd terraform
terraform init 
terraform apply -auto-approve
```
**2. Deploy Security Services (Ansible):**
```bash
ansible-playbook -i ansible/inventory.ini ansible/deploy-lab.yml
```

## Project Goal and Vision
The goal of this project is to move away from traditional manual system management and instead establish a fully code-driven, version-controlled infrastructure that can be replicated reliably across different environments within seconds. This approach aligns with modern **DevSecOps** practices, ensuring consistency, scalability, and security.

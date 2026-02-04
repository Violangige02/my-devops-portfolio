# Azure Infrastructure: CLI Virtual Machine Deployment ☁️

## 🎯 Project Summary
I successfully used the **Azure CLI** to deploy a Linux virtual machine (`devops-vm`) into a specific resource group. This task confirmed my ability to manage cloud resources programmatically and troubleshoot real-world authorization and syntax hurdles.



## 📊 Deployment Output
| Attribute | Value |
| :--- | :--- |
| **Resource Group** | `kml_rg_main-8048d1cdf44f408c` |
| **Power State** | `VM running` ✅ |
| **Public IP** | `172.184.104.102` |
| **Private IP** | `10.0.0.4` |
| **Location** | `westus` |

## 🚀 Key Achievements

### 🛡️ Security
Generated **RSA SSH keys** automatically during the provisioning process. This ensures secure, password-less login and follows cloud security best practices by disabling insecure password authentication.

### 💾 Storage
Configured a **30GB OS disk** using the `Standard_LRS` (Locally Redundant Storage) SKU. This setup balances cost-efficiency with data durability by replicating data within a single data center.

### 🌐 Networking
Successfully provisioned a dual-IP configuration. Azure automatically handled the creation of the Virtual Network (VNet) and assigned both a **Public IP** for external access and a **Private IP** on the `10.0.0.0/16` network for internal communication.



## 🧠 Lessons Learned
* **RBAC Awareness:** Troubleshooting the `AuthorizationFailed` error taught me how to verify resource group scopes using `az group list`.
* **CLI Syntax:** Learned that hidden spaces after backslashes (`\`) can break multi-line commands, leading to a preference for clean, single-line execution in sensitive environments.

  <img width="733" height="256" alt="resource group troubleshooting" src="https://github.com/user-attachments/assets/ce22f6c8-dd53-4dab-a2a8-2c3c2e0c6e80" />
  
<img width="695" height="259" alt="successful cli VM ceation" src="https://github.com/user-attachments/assets/70279dfb-712d-499a-9974-f0aa9c8ae85d" />

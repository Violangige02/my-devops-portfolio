# Network Architecture: datacenter-vnet

## 🗺️ Visual Overview
This diagram represents the foundational isolated network created in the Azure West US region.



## 🏗️ Design Components

| Component          | Specification          | Description                                                                 |
|--------------------|------------------------|-----------------------------------------------------------------------------|
| **VNet Name** | `datacenter-vnet`      | The primary container for Azure cloud resources.                            |
| **Region** | `West US`              | Selected for low latency and proximity to the Nautilus migration target.     |
| **Address Space** | `10.0.0.0/16`          | Provides 65,536 private IP addresses for scalable growth.                  |
| **Deployment Mode**| Azure Portal (Console)  | Configured via the GUI to ensure precise initial tagging and resource setup. |

## 🛡️ Segmentation Strategy (Next Steps)
To follow the "Security First" principle required by international companies, the VNet is prepared for the following subnets:
1. **Public Subnet (10.0.1.0/24):** For Load Balancers and Jump Hosts.
2. **Private Subnet (10.0.2.0/24):** For Application Servers (like Tomcat).
3. **Database Subnet (10.0.3.0/24):** Strictly isolated with no direct internet access.

## 🏁 Validation
The VNet was validated using the `az network vnet show` command to ensure the state is **Succeeded** and the CIDR block matches the migration blueprint.

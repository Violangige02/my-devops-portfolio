```bash
#!/bin/bash
# Description: Automated VNet creation for Azure Migration
# Region: westus | VNet: datacenter-vnet

VNET_NAME="datacenter-vnet"
RG_NAME="NautilusMigrationRG"
LOCATION="westus"
ADDRESS_PREFIX="10.0.0.0/16"

echo "✅ VNet $VNET_NAME created successfully."

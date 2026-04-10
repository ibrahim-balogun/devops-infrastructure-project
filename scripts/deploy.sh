#!/bin/bash
# Deployment Script
# DevOps Infrastructure Project
# Author: Balogun Ibrahim

set -e

echo "====================================="
echo "DevOps Infrastructure Project"
echo "Deployment Script"
echo "Author: Balogun Ibrahim"
echo "Date: $(date)"
echo "====================================="

# Step 1: Initialize Terraform
echo ""
echo "Step 1: Initializing Terraform..."
cd terraform
terraform init
echo "✅ Terraform initialized"

# Step 2: Plan infrastructure
echo ""
echo "Step 2: Planning infrastructure..."
terraform plan
echo "✅ Terraform plan complete"

# Step 3: Apply infrastructure
echo ""
echo "Step 3: Creating AWS infrastructure..."
terraform apply -auto-approve
echo "✅ Infrastructure created"

# Step 4: Get server IP
SERVER_IP=$(terraform output -raw web_server_public_ip)
echo ""
echo "✅ Server IP: $SERVER_IP"

# Step 5: Update Ansible inventory
echo ""
echo "Step 4: Updating Ansible inventory..."
cd ../ansible
sed -i "s/YOUR_SERVER_IP/$SERVER_IP/g" inventory.ini
echo "✅ Inventory updated"

# Step 6: Wait for server
echo ""
echo "Step 5: Waiting for server to be ready..."
sleep 30
echo "✅ Server ready"

# Step 7: Run Ansible
echo ""
echo "Step 6: Configuring server with Ansible..."
ansible-playbook -i inventory.ini deploy.yml
echo "✅ Server configured"

echo ""
echo "====================================="
echo "Deployment Complete!"
echo "Website URL: http://$SERVER_IP"
echo "====================================="

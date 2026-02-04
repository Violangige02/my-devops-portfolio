# AWS Infrastructure: Creating Custom Machine Images (AMI) 💿

## 🎯 Project Objective
I created a "Golden Image" for the **Nautilus DevOps** team to ensure we have a reusable, pre-configured template for scaling and disaster recovery.

## 🛠️ Technical Details
* **Source Instance:** `xfusion-ec2`
* **AMI Name:** `xfusion-ec2-ami`
* **Region:** `us-east-1`
* **State:** Available

## 🚀 Implementation Steps
1. **Selection**: Identified the `xfusion-ec2` instance in the EC2 Console.
2. **Imaging**: Navigated to **Actions > Image and templates > Create image**.
3. **Verification**: Tracked the status in the **AMIs** dashboard until it changed from `pending` to `available`.

## 🧠 Skills Demonstrated
* **Disaster Recovery**: Saving point-in-time system states.
* **Golden Imaging**: Creating standard templates for enterprise-wide deployment.
  <img width="1073" height="285" alt="AMI" src="https://github.com/user-attachments/assets/148b9dd3-ace9-43d8-af9a-71d029f6a677" />
  <img width="721" height="165" alt="AMI available" src="https://github.com/user-attachments/assets/6c4d8f1c-5508-4518-9d2b-2f53ccf26de8" />


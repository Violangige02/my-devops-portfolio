# AWS Database Management: RDS MySQL Deployment & Security 🗄️

## 🎯 Project Objective
To support the xFusionCorp migration, I was tasked with deploying a highly available **Amazon RDS (MySQL)** instance. The focus was on ensuring secure connectivity from application servers and implementing proper database user management.

## 🛠️ Technical Specifications
* **Engine:** MySQL 8.0
* **Instance Class:** db.t3.micro (Free Tier eligible)
* **Connectivity:** Configured Security Group to allow traffic on Port 3306 only from specific App Server IPs.
* **Storage:** 20GB General Purpose SSD (gp2).

## 🚀 Key Tasks Completed
1. **DB Provisioning**: Launched a managed RDS instance, ensuring "Public Access" was disabled to follow security best practices.
2. **Security Group Configuration**: Implemented a "Least Privilege" inbound rule, restricting database access to the VPC's application tier.
3. **Database Administration**: 
   - Created specialized users with restricted `GRANT` permissions (e.g., `backup_user`, `app_user`).
   - Verified connectivity using the `mysql` client from an EC2 instance.

## 🧠 Skills Demonstrated
* **Database Governance**: Managing DB snapshots and automated backups.
* **Network Security**: Configuring VPC Security Groups for DB isolation.
* **SQL Proficiency**: Writing DDL and DML commands to manage schemas and users.

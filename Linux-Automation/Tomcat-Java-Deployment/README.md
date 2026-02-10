# Java Application Deployment (Apache Tomcat) 🐱💻

## 🎯 Project Overview
Deployed a beta Java-based application on a CentOS App Server using Apache Tomcat. The goal was to configure a custom port and ensure the application serves traffic from the root URL.

## 🛠️ Technical Implementation
* **Server:** App Server 3 (Stratos DC)
* **Port:** 5004 (Custom HTTP Connector)
* **Artifact:** `ROOT.war` (Java Web Archive)
* **Firewall:** Configured `firewalld` to allow traffic on TCP 5004.

## 🔍 Troubleshooting Log: The "Connection Refused" Mystery
During deployment, I encountered a `Connection Refused` error even though Tomcat was running.

**The Diagnostic Process:**
1. Ran `ss -tulpn | grep 5004` and discovered the port was listening on `127.0.0.1` only.
2. Audited `server.xml` and realized I had modified the **Server Shutdown Port** instead of the **HTTP Connector Port**.
3. Reverted `<Server port="5004">` to `8005`.
4. Updated `<Connector port="8080">` to `5004`.

**Result:** Application successfully served at `http://stapp03:5004`.

## 🧠 Key Takeaway
Configuration hierarchy matters. In Tomcat, the `<Connector>` element is the entry point for external web traffic, whereas the `<Server>` port is for internal management.


graph LR
    User((User/Curl)) -->|Port 5004| Firewall{Firewall}
    Firewall -->|Allowed| Tomcat[Tomcat Server]
    subgraph App Server 3
    Tomcat -->|Connector| ROOT[ROOT.war Application]
    end




<img width="721" height="530" alt="tomcat" src="https://github.com/user-attachments/assets/8a82ba6b-a012-4aec-ae31-169fab2342e6" />

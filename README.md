# 🛡️ Active Directory Lab Project on Windows Server

This project is a hands-on lab where I set up and configured **Active Directory Domain Services (AD DS)** using **Windows Server 2022**. The goal was to simulate a real-world environment for identity and access management and to build foundational skills in managing a Windows domain.

---

## 📚 Overview

In this project, I built a virtual lab using a Windows Server 2022 virtual machine to:

- Install Active Directory Domain Services
- Promote the server to a Domain Controller
- Create a new domain (Secureskyairline)
- Add Organizational Units (OUs)
- Create user accounts in bulk with PowerShell
- Secure user passwords using `ConvertTo-SecureString`
- Create a Group Policy Object (GPO) for domain-level settings

---

## 🧰 Tools & Technologies

| Tool/Platform         | Purpose                             |
|----------------------|-------------------------------------|
| Windows Server 2022  | Active Directory & Domain Services  |
| PowerShell           | Scripting and automation            |
| Hyper-V / VirtualBox | Virtual lab setup                   |

---

## ⚙️ Key Features

- ✅ **Domain Controller Deployment**  
  Installed and promoted a standalone Windows Server to a domain controller.

- ✅ **User Account Automation**  
  Automated bulk creation of user accounts from a `.txt` file using PowerShell.

- ✅ **Organizational Units**  
  Structured users by department or group into OUs.

- ✅ **Group Policy (GPO)**  
  Created and linked GPOs to apply security settings across the domain.

---

<h2>Lab Work-through:</h2>

<p align="center">
Lab Diagram: <br/>
<img src="https://i.imgur.com/toK5UN0.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Created new domain:  <br/>
<img src="https://i.imgur.com/tpZZV1L.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Created new OUs: <br/>
<img src="https://i.imgur.com/pd2hQla.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Created 1000 users with PowerShell:  <br/>
<img src="https://i.imgur.com/unCguvg.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Client computer pings the domain successfully:  <br/>
<img src="https://i.imgur.com/8t6K2nb.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Client1 is able to join the server:  <br/>
<img src="https://i.imgur.com/ylh0dcK.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
<br />
<br />
Client one is able to lease an IP address from the DHCP Server:  <br/>
<img src="https://i.imgur.com/AFSxHju.png" height="80%" width="80%" alt="Disk Sanitization Steps"/>
</p>


## 🧠 Future Enhancements

- Add more computers to the domain
- Configure DNS and DHCP roles
- Create security groups and delegated permissions

---

## 🧑‍💻 Author

**Ifesola Fadare**  
Aspiring Cybersecurity | SOC Analyst | Cloud Security  
📫 Connect with me on [LinkedIn](https://www.linkedin.com/in/ifesola-fadare/)

---

## 📝 License

This project is open-source and available under the [MIT License](LICENSE).



<!--
 ```diff
- text in red
+ text in green
! text in orange
# text in gray
@@ text in purple (and bold)@@
```
--!>





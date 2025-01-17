## Activity File: Metasploitable Report

You will be playing the role of an SOC analyst. 

- Nessus provides many scan options. In this activity, you will use Nessus to perform a Metasploitable scan.

- You have to present the results of a vulnerability scan to your client. Answer the questions and be ready to provide a summary of remediation tactics for your client. 

- Remember: Communicating issues and how to fix them is one of the most important skills in IT work. 


### Instructions

Log onto your Kali VM in Hyper-V and start up Nessus by doing the following:

1. Open your terminal and run `/etc/init.d/nessusd start`. 

2. Open the Firefox browser and navigate to https://kali:8834. 

3. Log into Nessus with the credentials `root:toor`.

4. Navigate to the scans, then the Metasploitable report.

**Note:** If you see the following error: 

![Images/nessus_trouble.png](Images/nessus_trouble.png)


This error pops up because APIs have been disabled on our private VMs. To fix this, navigate to the Firefox settings and search for `cache`. Click on **Clear Data** then return to the **My Scans** window in Nessus, and refresh the page.


![Images/nessus_trouble2.png](Images/nessus_trouble2.png) 


Alternatively, if you are still unable to access the page you can use the downloaded report found here:
- [Metasploitable Report](Resources/Metasploitable_Report.pdf)


5. Download and the Metasploitable report. The report includes three vulnerabilities from a completed Metasploitable scan. Review the report and answer the questions below. 

    - Write your answers so they can be understood by a non-technical audience. Be prepared to share with the class. 

#### Samba Badlock Vulnerability


1. What is the primary purpose of Samba? **Samba is a networking protocol providing file and print services for windows clients and can integrate as  a Windows Domain Controller or member.**


2. Based on the scan results, how ~~is our~~ can out Samba server being exploited? **By exploiting an un patched vuln?**


3. How can we patch this vulnerability? **we can upgrade to Samba version 4.2.11 / 4.3.8 / 4.4.2 or later**


4. What are some of the disadvantages of fixing this vulnerability? **this may break services relying on it**



#### NFS Exported Share Information Disclosure

1. What is the primary purpose of a network file system (NFS)?  **NFS is a protocol for sharing files over a network**
2. Based on the scan results, how is our NFS being exploited?  **By allowing an unauthorized remote server to mount a file system** 
3. Because NFS does not support authentication or encryption, how would you suggest fixing this vulnerability (assuming that our other servers are patched and don't have vulnerabilities)?  **configure NFS ON-REMOTE-HOST to only allow authoized hosts to mount it's remote shares.**
4. If we wanted to fix this, how would it affect our day-to-day business activities, such as how our users share files?  **?????????????????** 



**Unencrypted Telnet Server**

1. What is the purpose of Telnet? **telnet provides command line interface for communication with a remote device**


2. What port does Telnet use? **Telnet uses point 23**


3. What protocol should we use to connect to the server? **We should use SSH to connect to the server**




----

&copy; 2020 Trilogy Education Services, a 2U Inc Brand.   All Rights Reserved.

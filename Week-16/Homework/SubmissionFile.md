## Week 16 Homework Submission File: Penetration Testing 1

#### Step 1: Google Dorking


- Using Google, can you identify who the Chief Executive Officer of Altoro Mutual is:

  - **Karl Fitzgerald**
- How can this information be helpful to an attacker: 

  - **If you can pretend to be Karl, you have power.**


#### Step 2: DNS and Domain Discovery

Enter the IP address for `demo.testfire.net` into Domain Dossier and answer the following questions based on the results:

    1. Where is the company located: 
           1.  **Sunnyvale, CA 94085**
    2. What is the NetRange IP address:
           1. **65.61.136.0/22**
    3. What is the company they use to store their infrastructure:
           1. **Rackspace**
    4. What is the IP address of the DNS server:
           1. **21.211.61.64 is the ip address of the start of authority**

#### Step 3: Shodan

- What open ports and running services did Shodan find:
  - **Apache Tomcat/Coyote JSP engine on port 80 and 8080**
  - **port 443 is open but the page is not working**

#### Step 4: Recon-ng

- Install the Recon module `xssed`. 
- Set the source to `demo.testfire.net`. 
- Run the module. 

Is Altoro Mutual vulnerable to XSS:  **YES ref xssed.com/mirror/57864/**

### Step 5: Zenmap

Your client has asked that you help identify any vulnerabilities with their file-sharing server. Using the Metasploitable machine to act as your client's server, complete the following:

- Command for Zenmap to run a service scan against the Metasploitable machine: 

- Bonus command to output results into a new text file named `zenmapscan.txt`:

  - **nmap --script smb-* -oN /tmp/nmap/test.txt**

- Zenmap vulnerability script command: 

  - **nmap --script smb-* 192.168.0.10**

  - alternativly... running like this I can see progress

  - ```
    cd /usr/share/nmap/scripts/
    for s in `ls smb*`;do echo $s;nmap --script $s 192.168.0.8 >/tmp/nmap/$x
    
    ```

- Once you have identified this vulnerability, answer the following questions for your client:
  1. What is the vulnerability:
     1. **exposed anonymously accessible drives**
  2. Why is it dangerous:
     1. **some parts of the file system can be searched and written to anonymously**
  3. What mitigation strategies can you recommendations for the client to protect their server:
     1. **disable network shares if not in use**
     2. **require authentication for network shares**

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  


## 1.1  The Cybersecurity Mindset
### Class Objectives
By the end of class, you will be able to:
- Explain the course structure and general direction of the program.
- Recognize the high-level security strategies and tools that will be covered in class.
- Define cybersecurity as the assessment of threats and the mitigation of risk.
- Articulate a clear definition of the CIA triad and its elements.
## 1.2  Attacking and Defending
### Class Objectives
By the end of class, you will be able to:
- List different types of user, web, server, and database cybersecurity attacks.
- Identify risk mitigation plan frameworks for user, web, server, and database cybersecurity attacks.
- Set up a virtual machine lab environment that you will use throughout the course.
## 1.3  Surveying the Cyberspace
### Class Objectives
By the end of class, you will be able to:
- Articulate roles and career pathways within the cybersecurity space.
- Explain the landscape of certifications available to security professionals.
- Articulate what the Security+ exam is and which infosec pathways benefit from the certification.
## 2.1  Introduction to Security Within the Organization
### Class Objectives
By the end of this lesson, you will be able to:
- Identify at least three benefits of a healthy security culture.
- Articulate the responsibilities of common C-Suite officers, including the CISO.
- Explain the responsibilities of the security department.
- Identify appropriate security controls for a given resource and situation.
## 2.2  Risk Management and Threat Modeling
### Class Objectives
By the end of today's class, you will be able to:
- Identify threat agents, possible attacks, and exploitable vulnerabilities relevant to a given asset.
- Prioritize risks based on likelihood and impact potential.
- Choose and justify controls for a given risk.
## 2.3  Governance Frameworks, Compliance, and BCP/DR
### Class Objectives
By the end of this class, you will be able to:
- Explain how organizations use policy and procedure to formalize standards of "right" and "wrong."
- Use governance frameworks to determine which policies an organization must develop.
- Explain how business continuity planning and disaster recovery ensure business and mission critical functions in the event of a disruption.
## Terminal 101 Day 1: How Sweet is the Terminal?
## 3.2  Commanding the Command Line
### Class Objectives
By the end of class, you will be able to:
* Identify and explain the structure of a terminal command.
* Explain how options modify the default behavior of a terminal command.
* Use the `man` command to list instructions and options for each command.
* Use the `find` command to locate files based on search parameters.
* Use the `grep` command to search within the contents of files.
* Use the `wc` command to count words and lines.
* Combine multiple commands in sequence with pipes to accomplish intermediate IT tasks.
## Terminal 101 - Day 3: Stick to the Script
### Class Objectives
By the end of this class, you will be able to:
* Define three benefits of text processing programs over programming languages for a security professional.
* Use `sed` to make substitutions to a file.
* Use `awk` to isolate data points from a complex log file.
* Edit contents of a file using `nano`.
* Design an IP lookup shell script by passing arguments.
### 01. Class Introduction
Before diving into the next set of commands, let's review what we've covered so far.
**Command Options and Man Pages**
- Commands can have their default behavior modified using **options**.
- Command options can have their own arguments called **parameters**.
- **Man pages** are documentation that exist within the terminal containing command syntax, options, and parameters.
- `man` followed by a command will display the documentation for that specific command.
**Searching for Directories, Files, and Data Within Files**
- The `find` command is used to find directories or files.
  - `-type d` is the option and parameter for finding directories.
  - `-type f` is the option and parameter for finding a file.
- The `grep` command is used to find a data point within a file.
- **Wildcards**, indicated with a `*`, can assist `grep` and `find` by:
     - Looking through multiple files. For example: `*.txt`.
     - Looking for part of a data point. For example: `*login*`.
**Counting Data and Piping**
- The `wc` command can be used for counting files, lines, and words.
- Pipes, which are indicated by `|`, are used to combine multiple commands.
- Pipes take the output from the command on the left and apply it to the new command on the right.
## Copyright
## 4.1  Introduction to Linux
### Class Overview
This week, you will work through a series of command-line exercises in which you will explore a Linux file system, collect evidence of a security breach, audit and reconfigure a Linux machine's user and group permissions, and take steps to harden the system.
Today's class will introduce you to the Linux operating system.
### Class Objectives
By the end of class you should be able to:
- Name three of the most important distributions of Linux.
- Navigate the Linux file structure using the command line.
- Manage processes with the `top`, `ps`, and `kill` commands.
- Install packages using `apt install`.
## 4.2  Linux Access Controls
### Class Overview
In today's class, we will continue our introduction to Linux by covering one of the operating system's most important functions: access control. You will complete a sequence of tasks that will expose you to many of the most fundamental aspects of Linux security: password strength, careful control of the `sudo` command, and file permissions.
The skills and tools covered today will be essential for various professional roles, from systems administration to penetration testing.
### Class Objectives
By the end of class today, you will be able to:
- Audit passwords using `john`.
- Elevate privileges with `sudo` and `su`.
- Create and manage users and groups.
- Inspect and set file permissions for sensitive files on the system.
## 4.3  Managing Permissions and Services
### Class Objectives
By the end of class, you should be able to to:
- Inspect and set file permissions for sensitive files on the system.
- Manage and monitor services on the system, including removing unused services.
- Create and assign users for services.
### Class Objectives
By the end of today's class, you will be able to:
- Identify and describe use cases for the three kinds of backups.
- Create (tar) an archive from existing files and directories.
- List and search the contents of an existing archive.
- Extract (untar) the contents of an archive.
- Describe and demonstrate two exploits for the `tar` command.
### Class Slides
The slides for today can be viewed on Google Drive here: [5.1 Slides](https://docs.google.com/presentation/d/1HhCky_9mapEhPzJyildPTgMOkKmJII4qC9UehACbe_4)
---
## 5.2 Student Guides: Introduction to `cron` and Scheduled Jobs
### Class Objectives
By the end of class, you will be able to:
- Schedule regular jobs for individual users with crontab.
- Write simple scripts for maintenance and security tasks.
- Use `cron` to automate the execution of security scripts to perform maintenance on a regular basis.
## 5.3  Sysadmin Essentials: Monitoring Log Files
## 6.1   Advanced Bash
## 6.2: Bash Scripting Continued
## 7.1  Introduction to Windows and CMD
### Class Overview
Today's class begins our unit on Windows administration and hardening. You will be introduced to the Windows operating system and command line by performing basic system administration tasks today.
### Class Objectives
By the end of class, you will be able to:
- Leverage the Windows Command Prompt (CMD) to execute various sysadmin responsibilities.
- Use `wmic` and Task Manager to manage applications and services.
- Create, manage, and view user information using the command-line tool `net`.
- Manage password policies using `gpedit`.
- Optionally, schedule tasks using Task Scheduler.
## 7.2  PowerShell Scripting
### Class Overview
Today's class will introduce you to the PowerShell command-line scripting language. You will learn how to use PowerShell to create and execute various scripts for system administration.
### Class Objectives
By the end of today's class, you will be able to:
- Use basic PowerShell cmdlets to navigate Windows and manage directories and files.
- Use PowerShell pipelines to retrieve Windows system event logs.
- Combine various shell-scripting concepts such as cmdlets, parameters, conditions, and importing files with defined data structures.
## 7.3  Windows Active Directory Domain Services
### Class Overview
In today's class, you will learn how to manage Active Directory Domain Services and secure a Windows Server domain.
### Class Objectives
By the end of the class, you will be able to:
- Explain how Active Directory is used to manage enterprise-scale environments.
- Define domain controllers as servers that manage AD authentication and authorization.
- Use Active Directory tools to create organizational units, users, and groups.
- Create and link Group Policy Objects that enforce domain-hardening policies.
##  8.1  Introduction to Networking
### Class Objectives
By the end of class, you will be able to:
- Identify clients, servers, requests, and responses in network communications.
- Identify network topologies and compare their advantages and disadvantages.
- Design a conceptual network made of various network and network security devices.
- Convert binary numeric representations to readable IP addresses and determine which servers the IP addresses belong to.
- Modify DNS host files to redirect the access of a website.
## 8.2  Ports, Protocols, and the OSI Model
### Class Objectives
By the end of class, you will be able to:
- Interpret data in network packets by analyzing their headers, payloads, and trailers.
- Explain the role of ports in specifying a network packet's destination.
- Associate common protocols with their assigned ports.
- Explain how encapsulation and decapsulation allow different protocols to interact with one another.
- Use the layers of the OSI model to identify sources of problems on a network.
- Capture and analyze live network traffic using Wireshark.
### Class Slides
The slides for today can be viewed on Google Drive located here: [8.2 Slides](https://docs.google.com/presentation/d/1n2U-EwZ0qKApMveVmdeJocHyNZn_9ucxRCMxUCQlBKA/edit#slide=id.g4789b2c72f_0_6)
---
## 8.3  Following Data Through Layers 2, 3, and 4
### Class Objectives
By the end of class, you will be able to:
- Define enumeration as a set of methods used by security professionals and hackers to determine network vulnerabilities.
- Use Wireshark to visualize and analyze ARP activity, including ARP spoofing.
- Use `ping` and `fping`  to determine if hosts are up and accepting connections.
- Use `traceroute` to troubleshoot networking communication issues between two devices.
- Define and distinguish TCP and UDP.
- Analyze TCP traffic in Wireshark.
- Analyze SYN scans to determine the availability of ports on a network.
## 9.1  IPs and Routing
### Class Objectives
By the end of class, you will be able to:
- Explain how DHCP and NAT assist with the transmission of data from private to public networks and from public to private networks.
- Analyze packet captures to diagnose potential DHCP issues on a network.
- Optimize routing schemes by determining the shortest or quickest paths between multiple servers.
- Use Wireshark to visualize wireless beacon signals, capture BSSIDs and SSIDs, and determine the type of wireless security being used by WAPs.
- Use Aircrack-ng to obtain a wireless key and decrypt wireless traffic to determine security risks.
##  9.2  Email Networks and Security
### Class Objectives
By the end of class, you will be able to:
- Validate DNS records using `nslookup`.
- Describe the process, protocols, and headers associated with email communication.
- Analyze email headers to identify suspicious content.
### Class Overview
Capture the flag
## 10.1  Introduction to Cryptography
## 10.1 Student Guide: Introduction to Cryptography
### Class Objectives
By the end of class, you will be able to:
  - Use basic transcription and substitution ciphers and keys to encrypt simple messages.
  - Understand how encryption supports secure communication through the PAIN framework.
  - Differentiate between encoding and encrypting.
  - Calculate the strength and efficiency of various encryption levels.
  - Use symmetric encryption tool Open SSL to confidentially transmit secure messages.
### Class Objectives
By the end of class, you will be able to:
- Calculate the required number of symmetric and asymmetric keys based on the number of people exchanging secure messages.
- Use GPG to generate keys, and encrypt and decrypt private messages.
- Use hashes to validate the integrity of data.
- Use digital signatures to validate the authenticity of data.
## 10.3  Applied Cryptography and Cryptographic Attacks
### Class Objectives
By the end of class, you will be able to:
- Apply steganography in order to hide a message within non-secret data, such as an image.
- Use SSL certificates to help authenticate a website.
- Use cryptographic attack methods to crack a password.
- Use Hashcat to uncover the plaintext value of a hash.

### 01. Class Overview
Before we introduce new cryptography concepts, let's review the concepts covered in the previous lesson:
**Asymmetric Encryption**
- While symmetric encryption has many advantages, its primary disadvantages are key exchange and key management.
- As an alternative, we can use **asymmetric key encryption**, also known as **public-key encryption**, in which each individual has a two-key pair.
- The two-key pair consists of:
  - A **public key**, which can be seen and shared with anyone.
  - A **private key**, which should be kept private and only seen by the owner of the key pair.
- For encryption, the sender of a message uses the receiver's public key to encrypt a message.
- For decryption, the receiver of the encrypted message uses their private key to decrypt the message.
- **RSA** is the most widely used asymmetric key algorithm used today.
- **GPG** is a command-line tool that can apply asymmetric encryption.
**Hashing**
- While encryption is used to protect confidentiality, hashing is a cryptographic method used to protect integrity.
- Hashing uses algorithms to convert a plaintext message into  a **message digest**, also known as a **hash**.
- Data that has been hashed cannot be reversed, therefore it is known as a **one-way function**.
- Common hashing algorithms are **MD5** and **SHA256**.
- Command-line tools that can be used to create hashes are **`md5sum`** and **`sha256sum`**.
**Digital Signatures**
- A **digital signature** is a mathematical scheme for verifying the authenticity of digital data.
- The primary purpose of digital signatures is authentication, but they can also be used for integrity and non-repudiation.
- Like encryption, digital signatures also use public key cryptography.
  - However, a user uses their own private key to sign a document, and the public key is used by other users to validate the signature.
- There are several types of digital signatures available: **detached**, **all at once**, and **clearsigned**.

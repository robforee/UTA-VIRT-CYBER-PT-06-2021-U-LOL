## Day 1

01 Welcome

02 Firewall Architectures

- host based network firewalls
- firewall types and architectures
- MAC layer filtering
- Stateless Firewall
- Stateful FIrewall
- Circuit-level gateway firewall
- Application or Proxy firewalls

03-05 using UFW

- install, start, re-start, stop
  - `sudo ufw reset`
  - `sudo ufw enable`
- show status
  - `sudo ufw status`
- quickly lock down all ports
  - `sudo ufw default deny incoming`
  - `sudo ufw default deny outgoing`
  - `sudo ufw allow 80`
  - `sudo ufw allow 22`
  - `sudo ufw allow 443`
  - `sudo ufw allow from 172.16.18.70 to any port 22`

06-08 using firewalld

- install, start, re-start, stop
  - `sudo ufw enable`
- show status
  - `sudo firewall-cmd --list-all-zones`
  - `sudo firewall-cmd --get-services`
  - `sudo firewall-cmd --zone=home --list-all`
- add zone and rules
  - `sudo firewall-cmd --zone=home --change-interface=eth0`
  - `sudo firewall-cmd --zone=home --add-icmp-block=echo-reply --add-icmp-block=echo-request`
  - `sudo firewall-cmd --zone=home --add-rich-rule='rule family="ipv4" source address="172.17.18.72" reject'`

09-11 testing fireall rules with NMAP (11.01.13)

- show open ports on a target machine
  - `nmap 172.17.18.72`
- show services and daemon types
  - `sudo nmap -sV 172.17.18.72`
- perform os detection
  - `sudo nmap -A -T4 172.17.18.72`
- determine if firewall is stateful
  - `sudo nmap -sA 172.17.18.72` 
- what is a SYN scan and possible responses
  - The TCP SYN scan, also known as “half-connect scan” sends a SYN packet to the victim.  This scan is beneficial from a hacking perspective because of its stealth, since it does not complete the TCP three-way handshake. 
  - SYN/ACK: Port is open, meaning the attacker can use this port.
  - RST: The port is closed.

  - No response: The port is filtered, meaning there’s a firewall protecting it. The port is most likely open but is protected by the firewall. 

## Day 2

01 Security Onion Setup

- check status of security onion
  - `sudo so-status`
  - `sudo so-restart`
  - `so-replay`

02 Welcome

03 Intro to IDS and Snort

04-05 IDS and Snort Activity

- 11.02.04 using Snort as an Intrusion Detection System (IDS)
- main differences between a firewall and IDS
  - An IDS differs from a firewall in that it **detects** and **alerts** when triggered by a rule.

06 **Network Security Monitoring Lecture**

- NSM Strengths
- NSM Weaknesses
- NSM Stages and Processes
- NSM Sensor Connectivity
- Security Onion
- Alert Data
- Sguil
- Sguil's Alert Panel
- Sguil's Snort Rule and Packe data sections
- Sguil's IP Resolution Section

07-08 Security Onion and NSM 

- using Security Onion for Network Security Monitoring (NSM)
  - Sguil ~ provides access to realtime events, session data, and raw packet captures
  - NetworkMiner ~ Network Forensic Analysis Tool

- how to..
  - filter packets
  - identify sensor, source-dest-ip, snort-msg, packet detail
  - follow trail, reconstruct/extract files
- using NSM for **Alert file extraction**
- using virustotal.com for file identification



## Day 3

01 Security Onion Setup

- 11.03.01 using Security Onion to generate alerts

02 - 04 C2 Beacon Setup and Activity

- 11.03.04  using Snort IDS and Security Onion NSM to investigate C2 beacon

05 Enterprise Security Monitoring

- OSSEC
- Elastic Stack
- Investigation, Analysis and Escalation Demo

06 - 09 Activity

- Squert ~ is a visual tool that attempts to provide additional context to events through the use of metadata, time series representations and weighted and logically grouped result sets.
- Sguil
- Kibana

10 - 12 Threat Hunting

- 11.03.06 using NSM to investigate, analyse and escalate

- 11.03.09 create a threat intelligence card
  - What indicator of attack did you use to begin your investigation?
  - What was the adversarial motivation (purpose of attack)?
  - What were the adversary's Tactics, techniques, and procedures?
    - What are your recommended mitigation strategies?

Cyber Kill Chain

| TTP                        | Examples of Cyber Kill Chain penetration                     |
| -------------------------- | ------------------------------------------------------------ |
| **Reconnaissance**         | The threat actor utilized online resources such as Facebook, DNS registration websites, and the "About" page of the company website. |
| **Weaponization**          | The creation of a Remote Access Trojan or RAT Downloader.    |
| **Delivery**               | A breached corporate email account.                          |
| **Exploitation**           | Crusher.exe is an executable hidden inside of a .pdf document that establishes persistence by modifying Windows registry key **C:\ Windows\System32\config** under the names **SAM**, **SECURITY**, **SOFTWARE** and **SYSTEM**. |
| **Installation**           | A user who clicks on the email attachment.                   |
| **Command & Control (C2)** | A command channel tunnels through Internet Relay Chat (IRC) establishing a connection to the attacker's server. |
| **Actions on Objectives**  | Attacker exfiltrates private user account information.       |

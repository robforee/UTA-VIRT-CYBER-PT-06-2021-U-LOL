.. Unit 11 Homework: Network Security
... Submission Guidelines
... Part 1: Review Questions
.... Security Control Types
security culture
technical security controls
.... Intrusion Detection and Attack indicators
IDS and IPS both monitor network traffic for malicious signatures, but an IPS can also block traffic based on rules.
An indicator of attack is real-time evidence of malicious activity while IOC is indicate previous malicious activity.
.... The Cyber Kill Chain
	Stage 1, Reconnaissance 
	Stage 2, Weponization 
	Stage 3, Delivery 
	Stage 4, Exploitation 
	Stage 5, Installation 
	Stage 6, Command and Control (C2) 
	Stage 7, Actions on Objectives 
.... Snort Rule Analysis
header template
action protocol src-ip src-pkt -> dest-ip dest-port 

... Part 2: "Drop Zone" Lab
.... Login to firewalld on HyperV
.... Zone configuratin info
.... Uninstall `ufw`
.... Enable and start `firewalld`
.... Confirm that the service is running.
.... List all firewall rules currently configured.
.... List all supported service types that can be enabled.
.... Zone Views
.... Create Zones for `Web`, `Sales` and `Mail`. (Hint look at the manpage in the instructions)
.... Set the zones to their designated interfaces.
.... Add services to the active zones. 
.... Add your adversaries to the Drop Zone.
.... Make rules permanent then reload them:
.... View active Zones
.... Block an IP address
.... Block Ping/ICMP Requests
.... Rule Check

... Part 3: IDS, IPS, DiD, and Firewalls
.... IDS vs. IPS Systems
.... Defense in Depth
.... Firewall Architectures and Methodologies

... Bonus Lab: "Green Eggs & SPAM"
.... Security Onion
.... Indicator of Attack in Sguil

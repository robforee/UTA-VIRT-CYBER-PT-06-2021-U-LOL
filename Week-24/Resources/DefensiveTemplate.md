# Blue Team: Summary of Operations

## Table of Contents
- Network Topology
- Description of Targets
- Monitoring the Targets
- Patterns of Traffic & Behavior
- Suggestions for Going Further

### Network Topology
_TODO: Fill out the information below._

The following machines were identified on the network:
- Target1
  - **Operating System**: linux
  - **Purpose**: web server with ssh
  - **IP Address**: 192.168.1.110
- Name of VM 2
  - **Operating System**: linux
  - **Purpose**:  web server with ssh
  - **IP Address**: 192.168.1.115

### Description of Targets
The target of this attack was: `Target 1` 192.168.1.110.

Target 1 is an Apache web server and has SSH enabled, so ports 80 and 22 are possible ports of entry for attackers. As such, the following alerts have been implemented:

### Monitoring the Targets

Traffic to these services should be carefully monitored. To this end, we have implemented the alerts below:

#### Website Scanning Alert
Website Scanning Alert is implemented as follows:
  - **Metric**: packetbeat.http.status_code
    - rate = sum(hits,1 minute); 
    - eRate = sum(response 400 hits,1 minute);
    - avgRate = avg(rate,1 hour);
    - cycleRate = avg( avgRate, avg(avgRate at the same hour each day,1 week) )

  - **Threshold1**:   rate > avgRate * 1.25  *"traffic surge"*
  - **Threshold1**: sum(eRate, 1 hour) > 10  "*website abuse*"
  - **Vulnerability Mitigated**: Not knowing if the website is under attack
  - **Reliability**: This alert has a high reliability.
  - **Notes:** If legitimate traffic is generating 400 series responses then the missing pages should be configured to return 300 series responses.

#### Password Security Alert
The Password Security Alert is implemented as follows:
  - **Metric**: ssh.login.success
    - rate = sum( success true, 1 hour)
    - eRate = sum( success false, 1 hour)
    - cycleRate = avg( avgRate, avg(avgRate at the same hour each day,1 week) )

  - **Threshold1**:  rate > avgRate * 1.25  *"traffic surge"*
  - **Threshold2**:  sum(eRate, 1 hour) > 10  "*brute force passwords*"
  - **Vulnerability Mitigated**: Not knowing user login habits.
  - **Reliability**: Threshold1 is informational; Threshold2 has high reliability

#### User Priviledge Alert
The User Priviledge Alert is implemented as follows:
  - **Metric**: filebeat system.auth.sudo.command
    - rate = sum( success true, 1 hour)
    - cycleRate = avg( avgRate, avg(avgRate at the same hour each day,1 week) )

  - **Threshold**: rate > cycleRate * 1.25
  - **Vulnerability Mitigated**: Not knowing when sudo is customarily being used.
  - **Reliability**:  This alert has high reliability





### Suggestions for Going Further (Optional)
The logs and alerts generated during the assessment suggest that this network is susceptible to several active threats, identified by the alerts above. In addition to watching for occurrences of such threats, the network should be hardened against them. The Blue Team suggests that IT implement the fixes below to protect the network:
- Port and Website scanning
  - **Patch**: fail2ban
  - **Why It Works**: locks out users who have more than 3 failed login attempts and can be configured to also block on repeated 404 errors
  
- Vulnerability 2
  - **Patch**: WordPress plugin 
  - **Why It Works**: Patches the .htaccess file to disable wordpress user discovery by  ID
  
  

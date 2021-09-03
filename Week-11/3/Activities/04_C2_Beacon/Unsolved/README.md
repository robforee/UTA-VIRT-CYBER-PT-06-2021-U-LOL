## Activity File: Alert - C2 Beacon

In this activity, you will continue your role as an SOC analyst for the California Department of Motor Vehicles (DMV).

- Your organization has just experienced another, more sophisticated attack. It’s a red alert that Snort has identified as an emerging threat: a C2 beacon acknowledgement attack.

- The entire network is down across the state. As long as the network is down, none of the DMV offices can issue or renew licenses and registrations, or complete driving tests.

- As part of the Computer Incident and Response Team (CIRT), you need to establish an attacker profile that includes the tactics, techniques, and procedures used by the adversary, and document all of your findings. Like a real security analyst, you may need to research other sources to answer all the questions.  

### Instructions

Use the following indicator of attack:

- Source IP: Attacker `192.168.204.137`

- Destination IP: Victim `67.183.123.151`

- Snort Message: `ET TROJAN W32/Asprox.ClickFraudBot CnC Beacon Acknowledgment`

**Note:** You'll notice many attacks targeting the victim IP address. Please make sure to focus on the `ET TROJAN W32/Asprox.ClickFraudBot CnC Beacon Acknowledgment` attack.


Open Sguil and filter the source IP `192.168.204.137.`

1. What Snort rule triggered this alert?
   1. 


2. According to the Snort rule, what is the source port?

   1. 49159


3. Taking a closer look at the Snort rule option, what are the reference URLs listed?

   1. research about the attack


From the Sguil console, right-click on the Alert ID and pivot to Transcript, then scroll to the bottom of the Transcript window.  

4. What is the message in the HTML body?
   1. hi!

Close the Transcript window and go back to the Snort rule window. Click on the research.zscaler.com URL. A web browser will launch and take you to the Zscaler website. Read through the article and then answer the remaining questions.  

 (If the link is down, use this link instead to answer the following questions: [New Asprox Variant Goes Above And Beyond To Hijack Victims](https://www.zscaler.com/blogs/research/new-asprox-variant-goes-above-and-beyond-hijack-victims).)

5. What type of threat is this?
   1. botnet


6. Did this threat disable Windows registry keys?

   1. no


7. Why does this threat disable key Windows processes?

   1. to keep it from being removed (safe boot for AV)


9. What does CnC stand for and what is it?

   1. command and control


10. What is the term to describe a computer that's under the control of a C2 server?

    1. 

#### Bonus Questions


11. Name one of the most popular techniques an adversary uses to infect a host with a botnet.

    1. phishing


12. What are two ways an organization can mitigate this type of a threat?

    1. dis-allow file downloads
    2. blacklist urls


13. How far up the cyber kill chain did this attack get?

    1. recon, lateral mvmt, data-efil


14. What procedure does this threat use to hide when it's discovered?

    1. removing install file
    2. random-name-file triggered by job on reboot


15. Why is this threat persistent?

    1. can re-start self


16. What message does the victim's computer send to the CnC to let it know that it's alive, listening, and waiting?

    1. hi!


17. What tactic does this threat use to remain hidden and unnoticed?

    1. remove and create a Security Center Task in Windows

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

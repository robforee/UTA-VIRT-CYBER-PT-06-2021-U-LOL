## The two main differences of an IPS and IDS:



> The primary diffence between IDS and IPS is that an IDS operates on a copy of network traffic, where an IPS works on the live network stream.​
>
> The difference allows an IPS to block traffic in real time, at the expense of greater resources.




- IDS physically connects via a network tap or mirrored port or SPAN.

  - **Network tap** (Test Access Port) is a hardware device that provides access to a network. Network taps transit both inbound and outbound data streams on separate channels at the same time, so all data will arrive at the monitoring device in real time.

  - **SPAN** (Switched Port Analyzer), also known as **port mirroring**, sends a mirror image of all network data to another physical port, where the packets can be captured and analyzed.

  - IDS requires an administrator to react to an alert by examining what has been flagged.

- IPS physically connects inline with the flow of data. An IPS is typically placed in between the firewall and network switch. 

  - Requires more robust hardware due to the amount of traffic flowing through it.
  - Automatically takes action by blocking and logging a threat, thus not requiring administrative intervention.


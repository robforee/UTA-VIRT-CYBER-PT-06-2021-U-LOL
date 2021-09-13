# Intrusion Detection System Overview

Intrusion detection systems (IDS) are passive devices that perform packet captures of all traffic that passes through a network interface.

- Intrusion detection systems are not designed to _respond_ to an attack, but rather to document and log attacks for future analysis.

- Intrusion detection systems help organizations enforce the cyber kill chain by establishing situational awareness of their adversaries, which may include intent and end objectives. Organizations can use this information to harden their defenses.

#### IDS Types

There are two primary types of IDS:

- **Signature-based** IDS compares patterns of traffic to predefined signatures.
  - Good for identifying well-known attacks.
  - Requires regular updates as new attack signatures are released.
  - Vulnerable to attacks through packet manipulation that tricks the IDS into believing malicious traffic is good.
  - Unable to detect zero-day attacks.

- **Anomaly-based** IDS compares patterns of traffic against a well-known baseline.
  - Good for detecting all suspicious traffic that deviates from the well-known baseline.
  - Prone to issuing false alerts.
  - Assumes normal network behavior never deviates from the well-known baseline.
  - Excellent at detecting when an attacker probes or sweeps a network.

#### Intrusion Detection Architecture

Intrusion detection systems have two basic architectures:

- **Network intrusion detection system** (**NIDS**) filters an entire subnet on a network.
  - Matches all traffic to a known library of attack signatures.
  - Passively examines network traffic at the points it is deployed.
  - Relatively easy to deploy and difficult to detect by attackers.

- **Host-based intrusion detection system** (**HIDS**) runs locally on a host-based system or user’s workstation or server.
  - Acts as a second line of defense against malicious traffic that successfully bypasses a NIDS.
  - Examines entire file systems on a host, compares them to previous snapshots or a baseline, and generates an alert if there are significant differences between the two.


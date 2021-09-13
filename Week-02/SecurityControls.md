# Security Controls

The goal of the activity was to develop a way to improve the organization's security culture.

* However, training won't address the problem in the short term: It will take at least a quarter to train just 25% of the company. Improving the organization's security culture is a valuable long-term outcome, but the issue also needs to be mitigated immediately.

- In addition to training, the organization can implement security controls that prevent the problem before training is complete.

  - For example, the firm might implement a content filter that prevents employees from downloading files from non-company emails.

- Security controls address the problem in two ways:

  - Addresses employee behavior and security culture by educating the organization in best practices.

  - Addresses the issue directly by "patching" the vulnerability.

- Layering security controls is fundamental to a security design framework known as **defense in depth**.

We'll proceed by discussing different types of access control and using them to further explore the concept of defense in depth.

A **security control** is any system, process, or technology that protects the confidentiality, integrity, and accessibility of a resource.

Controls can be administrative, technical, or physical in nature. Below are examples of each type of control:

  - **Administrative**: Requiring employees to adhere to training guidelines.

  - **Technical**: Forcing developers to authenticate using SSH keys rather than passwords.

  - **Physical**: Protecting a building by requiring keycard access.

Each type of control can have different goals:

  - **Preventive** controls _prevent_ access with physical or logical/technical barriers. Keycard access is a preventive control.

  - **Deterrent** controls discourage attackers from attempting to access a resource.

  - **Detective** controls do not protect access to a confidential resource. Rather, they identify and record attempts at access.

  - **Corrective** controls attempt to fix an incident and possibly prevent reoccurrence.

  - **Compensating** controls do not prevent attacks, but restore the function of compromised systems.

These categories are important to know for the Security+ exam.

Regardless of type, all controls seek to restrain or respond to _access_ to a given resource. **Access control** is the practice of controlling who can access which resources. This topic will be covered in detail in future units. 

For now, here are some high-level examples of controls for specific domains:

  - Linux: File permissions act as access controls by preventing users from modifying files they don't own.
  - Networks: Firewalls control access to networks.
  - Incident response: Monitoring systems act as detective controls.


Controlling access often also implies tracking identity, as seen with keycards. Together, these make up the field of **Identity and Access Management (IAM)**.


# Defense in Depth

- **Defense in depth** is a concept in which multiple defenses are used to secure a resource. For example, a secure network might protect an SSH server in three ways:

  - Hiding it behind a firewall that only forwards connections from the corporate VPN.
  - Forcing users to authenticate with SSH keys _and_ passwords.
  - Requiring them to generate new keys, with new strong passwords, every quarter.

- The controls above are:

  - Technical: Protect the server with a firewall. Require password-protected key authentication.

  - Procedural: Invalidate keys every quarter and require users to generate new ones.

- Since security is ensured by implementing three layers of protection, the SSH server has **control diversity**.

- These securities are probably excessive protection for an SSH server, but they illustrate the principle of defense in depth: Defending the system in multiple ways ensures that it remains protected _even if one of them fails_.

  This concept is known as **redundancy**. Redundancy is achieved because:

  - Protecting the SSH server with a firewall prevents unwanted connections from unintentional attackers.

  - If an attacker bypasses the VPN, they still can't easily compromise the server. Since it forces users to authenticate with SSH keys _and_ passwords, they can't easily brute-force the login. 

    In addition, they would be unable to use even a valid, stolen SSH key without also uncovering its password. Thus, just requiring password-protected SSH keys offers two layers of protection.

  - If an attacker does steal both a valid SSH key _and_ its password, they would only be able to compromise the server for a limited amount of time, since the stolen key would be invalidated in at most three months.

- Ensuring redundancy eliminates the inherent risk of **single points of failure**. If the system above only had a single control, that control would be its single point of failure. An attacker could compromise the system by breaking just a _single_ control.

- In addition to technical and procedural controls, defense in depth strategies can be built with:

  - Personnel security: Issuing ID cards to all employees.
  - Physical security: Requiring ID cards for access to physical buildings.

- The training plan you developed in the previous activities addresses _personnel security_. However, defense in depth suggests that the action plan should include additional measures to address the tailgating problem.


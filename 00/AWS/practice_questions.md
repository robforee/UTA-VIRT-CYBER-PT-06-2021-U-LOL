1. Which of the following can you use as a web-based interface to view processes in AWS?  
	a. AWS SDK  
	b. AWS Management Console  
	c. AWS CLI  
	d. AWS API  
	<details>
 		<summary>Click to see answer.</summary>
	
	> b - AWS Management Console is a web application for managing Amazon Web Services.
	</details>

2. You need to review actions taken in the AWS Management Console as well as the CLI, which service should you use?  
	a. AWS Config  
	b. AWS CloudTrail  
	c. Amazon CloudWatch  
	d. IAM  
        <details>
                <summary>Click to see answer.</summary>

	> b - AWS CloudTrail is a service that enables governance, compliance, operational auditing, and risk auditing of your AWS account. With CloudTrail, you can log, continuously monitor, and retain account activity related to actions across your AWS infrastructure. CloudTrail provides the event history of your AWS account activity, including actions taken through the AWS Management Console, AWS SDKs, command line tools, and other AWS services. This event history simplifies security analysis, resource change tracking, and troubleshooting. In addition, you can use CloudTrail to detect unusual activity in your AWS accounts. These capabilities help simplify operational analysis and troubleshooting. https://aws.amazon.com/cloudtrail/        
	</details> 

3. A Healthcare agency needs to store certain patient information for up to 10 years. To save cost, they want to archive this data to cheaper storage. The data needs to be retrieved within 12 hours. Which is the cheapest option?  
	a. Glacier Deep Archive  
	b. Glacier  
	c. Redshift  
	d. S3 Standard IA  
	<details>
 		<summary>Click to see answer.</summary>
	
	> a - Glacier Deep Archive meets the requirement and is the cheapest option. Amazon S3 Glacier and S3 Glacier Deep Archive are secure, durable, and extremely low-cost Amazon S3 cloud storage classes for data archiving and long-term backup. They are designed to deliver 99.999999999% durability and provide comprehensive security and compliance capabilities that can help meet even the most stringent regulatory requirements. https://aws.amazon.com/glacier/
	</details>

4. Your company has decided to migrate entirely to the AWS Cloud. Which answers are a part of the 6 advantages of cloud computing? (Select 2)  
	a. Trade variable expense for capital expense  
	b. Benefit from minor economies of scale  
	c. Stop spending money running and maintaining data centers  
	d. Go global in minutes  
	<details>
 		<summary>Click to see answer.</summary>
	
	> c and d  
	> Stop spending money running and maintaining data centers – Focus on projects that differentiate your business, not the infrastructure. Cloud computing lets you focus on your own customers, rather than on the heavy lifting of racking, stacking, and powering servers. https://docs.aws.amazon.com/whitepapers/latest/aws-overview/six-advantages-of-cloud-computing.html  
	> Go global in minutes – Easily deploy your application in multiple regions around the world with just a few clicks. This means you can provide lower latency and a better experience for your customers at a minimal cost. https://docs.aws.amazon.com/whitepapers/latest/aws-overview/six-advantages-of-cloud-computing.html
	</details>

5. You are trying out AWS on a trial basis and need to deploy an application without having to configure servers. Which AWS service can you use?  
	a. ECS  
	b. Auto Scaling  
	c. Elastic Beanstalk   
	d. CloudFormation 
 	<details>
 		<summary>Click to see answer.</summary>

	> c - AWS Elastic Beanstalk is an easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker on familiar servers such as Apache, Nginx, Passenger, and IIS. https://aws.amazon.com/elasticbeanstalk/
	</details>

6. What AWS service lets you provision a logically isolated section of the AWS Cloud?  
	a. Amazon Route 53  
	b. Amazon RDS  
	c. Amazon Virtual Private Cloud  
	d. Elastic Network Interface  
 	<details>
 		<summary>Click to see answer.</summary>

	> c - Amazon Virtual Private Cloud (Amazon VPC) lets you provision a logically isolated section of the AWS Cloud. You have complete control over your virtual networking environment, including the selection of your own IP address range, creation of subnets, and configuration of route tables and network gateways. You can use both IPv4 and IPv6 in your VPC for secure and easy access to resources and applications. https://aws.amazon.com/vpc/
	</details>

7. Microsoft has announced a new patch for its operating system. For a Platform as a Service solution, who would be responsible for applying the patch?  
	a. AWS  
	b. The Customer for spot instances only  
	c. Customer  
	d. Either can apply this patch  
 	<details>
 		<summary>Click to see answer.</summary>

	> a - Platforms as a service remove the need for organizations to manage the underlying infrastructure (usually hardware and operating systems) and allow you to focus on the deployment and management of your applications.  
	> The customer would be responsible for patching the Operating System for Infrastructure as a Service solutions
	</details>

8. A company is configuring IAM for its new AWS account. There are 5 departments with between 5 to 10 users in each department. How can they efficiently apply access permissions for each of these departments and simplify management of these users?  
	a. Create a policies defining the permissions needed. Attach the policies to all users in each department.  
	b. Create an IAM role defining the permissions needed. Create an IAM group and attach the policy to the group. Add the department's members to the group.  
	c. Create an IAM group for each department. Add the department's members to the group.  
	d. Create policies for each department that define the permissions needed. Create an IAM group for each department and attach the policy to each group. Add each department's members to their respective IAM group.  
 	<details>
 		<summary>Click to see answer.</summary>

	> d - By creating an IAM group, all like users can be managed all at one time. Once the permissions are defined within the policy, it can be attached to the IAM group, allowing them access to the resources/services stated within the policy.
	</details>

9. Your company utilizes DNS and wants to migrate DNS and management of DNS to the cloud. Which AWS service would you use?  
	a. CloudFormation  
	b. Application Load Balancer  
	c. Route 53  
	d. CloudFront  
	<details>
 		<summary>Click to see answer.</summary>

	> c - Amazon Route 53 provides highly available and scalable Domain Name System (DNS) services, domain name registration, and health-checking web services. It is designed to give developers and businesses an extremely reliable and cost-effective way to route end users to Internet applications by translating names like example.com into the numeric IP addresses, such as 192.0.2.1, that computers use to connect. https://aws.amazon.com/route53/
	</details>

10. Configuring user permissions so that users can access only the resources they need to do their job follows what principle?  
	a. Principle of Least Privilege  
	b. Principle of Minimum Permissions  
	c. Principle of Organizations  
	d. IAM Principle  
	<details>
 		<summary>Click to see answer.</summary>

	> a - When you create IAM policies, follow the standard security advice of granting the least privilege, or granting only the permissions required to perform a task. Determine what users (and roles) need to do, and then craft policies that allow them to perform only those tasks. https://docs.aws.amazon.com/IAM/latest/UserGuide/best-practices.html#grant-least-privilege
	</details>

11. You need to set up a virtual firewall for your EC2 instance. Which would you use?  
	a. Network ACL  
	b. Security Group  
	c. Subnet  
	d. IAM Policy  
	<details>
 		<summary>Click to see answer.</summary>

	> b - A security group acts as a virtual firewall for your instance to control inbound and outbound traffic. When you launch an instance in a VPC, you can assign up to five security groups to the instance. Security groups act at the instance level, not the subnet level. Therefore, each instance in a subnet in your VPC can be assigned to a different set of security groups. https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html
	</details>

12. The CTO of a software company had requested an Executive Summary detailing the advantages of a potential move to the AWS Cloud. What can you say is an advantage of an RDS database over a traditional database?  
	a. It is 5 times faster than traditional databases.  
	b. AWS maintains the underlying OS and performs software patching on the database.  
	c. It is much easier to convert to a NoSQL database.  
	d. There is much greater access for DBAs.  
	<details>
 		<summary>Click to see answer.</summary>

	> b - Amazon Relational Database Service (Amazon RDS) makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups. It frees you to focus on your applications so you can give them the fast performance, high availability, security, and the compatibility they need. https://aws.amazon.com/rds/
	</details>

13. You need to purchase reserved instances for a 3-year project. But a company initiative may change all the company compute operating systems from Windows to Linux midway through this project. What type of reserved instance should you purchase?  
	a. Automatic  
	b. Standard  
	c. Convertible  
	d. Zonal  
	<details>
 		<summary>Click to see answer.</summary>

	> c - Can be exchanged during the term for another Convertible Reserved Instance with new attributes including instance family, instance type, platform, scope, or tenancy. https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/reserved-instances-types.html
	</details>

14. A company needs to use a Load Balancer which can serve traffic at the TCP, and UDP layers. Additionally, it needs to handle millions of requests per second at very low latencies. Which Load Balancer should they use?  
	a. Application Load Balancer  
	b. TCP Load Balancer  
	c. Classic Load Balancer  
	d. Network Load Balancer  
	<details>
 		<summary>Click to see answer.</summary>

	> d - Network Load Balancer is best suited for load balancing of Transmission Control Protocol (TCP), User Datagram Protocol (UDP) and Transport Layer Security (TLS) traffic where extreme performance is required. Operating at the connection level (Layer 4), Network Load Balancer routes traffic to targets within Amazon Virtual Private Cloud (Amazon VPC) and is capable of handling millions of requests per second while maintaining ultra-low latencies. https://aws.amazon.com/elasticloadbalancing/
	</details>

15. AWS uses the shared responsibility model. For security, which of the following are the responsibilities of AWS? (Choose 3)  
	a. Physically securing compute resources  
	b. Disk disposal  
	c. Configure Security Group  
	d. Network patching  
	e. User password rules  
	<details>
 		<summary>Click to see answer.</summary>

	> a - AWS is in charge of physically securing compute resources, as it is part of the infrastructure that runs all of the services offered in the AWS Cloud.  

	> b - Disk disposal is one of AWS's responsibilities, as it is connected to the infrastructure, which AWS handles.  

	> d - Network patching is one of AWS's responsibilities, as it is connected to the infrastructure that AWS handles.
	</details>

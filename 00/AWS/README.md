#### IAM Best Practice
	- Do not use your root account to login
	- Always enable MFA when possible
	- One user should use one real human - do not have phantom users
	- Use roles to access different AWS services
	- Always place users to groups and assign the required roles to groups
	- Have strong password policy
	- Use IAM credential report to audit user permissions

#### S3 - Simple Storage Service
	- S3 is object based, key/value pair storage solution
	- File stored are in different locations (physical servers)
	- File size can be from 0 bytes to 5 TB, unlimited storage
	- Bucket names are globally unique
	- When file upload to a bucket is successful, HTTP 200 will be received
	- Read after write consistency for PUTS of new objects
	- Eventual consistency for overwrite PUTS and DELTES
	- AWS guarantees for S3
		- S3 platform is built 99.99% availability
		- but AWS gurantees 99.9% availability
		- 99.999999999% durability for S3 data (11 9s)
	- Features
		- Tiered storage
		- Lifecycle management
		- Versioning
		- Encryption
		- Secure data using Access Control Lists (ACL) and Bucket Polices
	- Storage classes - https://aws.amazon.com/s3/storage-classes/
		- S3 Standard - 99.99% availability, 11 9 durability, can sustain 2 facility failure
		- S3 IA (Infrequently Accessed) - lower fees than standard, but charged when accessing data
		- S3 one zone IA - IA with lower cost but no data replication across different AZs
		- S3 Intellegent Tiering - moves your data based on your usage pattern
		- S3 Glacier - for data archiving, takes minutes or hours to access (configurable), lower cost
		- S3 Glacier Deep Archive - lowest cost, but data retrieval time takes 12 hours or more
	- Charges
		- Storage
		- Requests
		- Storage management pricing
		- Data transfer pricing
		- Transfer acceleration
		- Cross region replication
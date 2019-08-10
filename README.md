Terraform AWS Individual Modules
=================================
## These terraform modules provide basic infrastructure in [AWS](https://aws.amazon.com) environment.
---------------------------------
## VPC (Virtual Private Cloud)
#### "VPC enables you to launch AWS resources into a virtual network"

### VPC
- Creation of VPC
- Enable DNS hostnames
- Enable DNS support
### Subnet
- Creation of public and private subnets
- Creation of public and private subnet route table
- Assocation of subnets to route tables
### Internet Gateway
- Creation of internet gateway
- Association of internet gateway with vpc
### NAT Gateway
- Creation of Elastic IPs
- Creation of NAT gateways
- Allocation of Elastic IPs to NAT Gateways
- Association of NAT Gateways with public subnets
### Security Groups
- Creation of security groups
- Creation of security group rules with CIDR block as input
- Creation of security group rules with security group IDs as input
- Association of security group rules with security groups
---------------------------------------------------------------------
## EC2 (Elastic Cloud Compute)
#### "EC2 provides scalable computing capacity in the Amazon Web Services (AWS) cloud"

### Instances
- Creation of Instances
- Associating VPC and subnet in which instance need to be created
- Adding user data file to execute at initial launch of instance/server
- Associationg key file to access server via SSH
- Associating security group in which this instance need to be under
### Elastic Load Balancers
- Creation of Elastic Load Balancer
- Assigning of multiple subnets to ELB
- Assigning of security groups
- Associating instances for load balancing
- Configuration of listener ports and protocols
- Assigning health check parameters
### Launch Configurations
- Creation of a Launch Configuration template
- Specift the AMI ID
- Specify instance type
- Adding user data file to execute at initial launch of instance/server
- Associationg key file to access server via SSH
- Associating security group in which this instances need to be under
### Autoscaling Groups
- Creation of Autoscaling Group
- Association of launch configuration template
- Specify desired capacity of servers need to be available
- Association of availability zones or association of subnets to specify availability zones
- Specify maximum size of scaling capacity
- Specify minimum size of scaling capacity
- Association of load balancer with autoscaling group (only in Classic load balancer [ELB])

**NOTE**: Using the resource `tags` functionality we can audit, track, and manage resources. 

Authors
=======

Originally created and maintained by [Krishna Reddy]https://github.com/krish143434

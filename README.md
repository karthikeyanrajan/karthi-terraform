#To install terraform on Amazon ec2 ami
#Run the following commands

sudo yum install -y yum-utils shadow-utils
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo yum -y install terraform


#To run the terraform to run AWS
# To init the terraform
terraform init
#To run the terraform by using the accesskey and secrete accesskey
terraform apply -var-file="terraform.tfvars"

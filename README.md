# Tutorial page:

https://us-east-1.console.aws.amazon.com/ec2/home?region=us-east-1#Instances:v=3;$case=tags:true\,client:false;$regex=tags:false\,client:false

Objective:
- Create a private EC2 server in My VA VPC.

# Tutorial 2:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-variables

Objective:
- Configure varialbe in a file
- dynamically inject variable via command line.
  NOTE:  the injected variable(s) does not change the hard-coded variables specified in the tfvar file.

# Tutorial 3:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-outputs

Objective:
- Specify output variables in the outputs.tf file

# Tutorial 4:
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-remote

Objective:
- Migrate the state to a "remote backend" in Terraform Cloud
- Generate a Terrafrom Cloud Token.


  To login Terrafrom Cloud?
  At the prompt, issue this commmand:
  > t login
  Then cut and paste the token to your prompt.
  This is one time thing, from now on everytime you login the remote terrafprm cloud, terraform will look up the login token in this file and will automatically logs you in:
   /Users/john/.terraform.d/credentials.tfrc.json
   Note that this file is stored under the user home directory. NOT that the project root directory.


# Tutorial 5:
https://developer.hashicorp.com/terraform/tutorials/cloud-get-started/cloud-create-variable-set

Objective:
- "Credentials Variables Set": Set up AWS Credentials at organization level = Mastering-Terraform-Cloud-JN
- "Variable": Set up env variables for non-required resources provisioning such as (ec2 tags, etc..)
  Note that you can only set up the env variables for non-required resources.  All of required resourcs must be specified in the 'resource' section.  The tutorials on this topic are incorrect 
NOTE: to use the Terraform Cloud, you need to do:
> Turn on the "cloud" object in the terraform.tf
> t init
This will tell the terrafrom executor to use the remote backend Terrafrom Cloud.
After a run, all outputs are displayed under the tab outputs under the workspace.

# There cases where you want to "update" the remote Terraform "state.tfstate" file with a new version from your current local "terraform.tfstate" state file, then you will need to follow the follwing procedures
# How to version the remote state file with the Terraform Cloud API ?
https://developer.hashicorp.com/terraform/tutorials/cloud/cloud-state-api#modify-and-create-the-state-payload













 
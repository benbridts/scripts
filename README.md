# scripts
A collection of (personal) scripts

## SSM
Some of these can be used with SSM. See [the documentation](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-install-managed-linux.html) for how to install that in an hybrid environment. At the time of writing you could run this code on raspbian:

```
mkdir /tmp/ssm
sudo curl https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/debian_arm/amazon-ssm-agent.deb -o /tmp/ssm/amazon-ssm-agent.deb
sudo dpkg -i /tmp/ssm/amazon-ssm-agent.deb
sudo service amazon-ssm-agent stop
sudo amazon-ssm-agent -register -code "activation-code" -id "activation-id" -region "region" 
sudo service amazon-ssm-agent start
```
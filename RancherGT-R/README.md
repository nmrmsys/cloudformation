
# Rancher GT-R

Rancher Server Explosion Speed Stack

# Create

```
cd RancherGT-R
../cfn_create.sh RancherGT-R RancherGT-R.yaml --parameters ParameterKey=ServerInstanceType,ParameterValue=m4.large ParameterKey=VpcId,ParameterValue=vpc-xxxxxxxx ParameterKey=SubnetId,ParameterValue=subnet-xxxxxxxx ParameterKey=KeyName,ParameterValue=xxxxxxxx
```

# Delete

```
../cfn_delete.sh RancherGT-R
```

# Requirement
- [AWS Management Console CloudFormation](https://console.aws.amazon.com/cloudformation)
- [AWS CLI (AWS Command Line Interface)](https://aws.amazon.com/cli)

# Author
[nmrmsys](https://github.com/nmrmsys)

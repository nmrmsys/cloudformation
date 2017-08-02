
# Rancher Mini

Rancher Minimum Stack Template

# Create

```
cd RancherMini
../cfn_create.sh RancherMini RancherMini.yaml --parameters ParameterKey=ServerInstanceType,ParameterValue=t2.large ParameterKey=DockerInstanceType,ParameterValue=t2.large ParameterKey=VpcId,ParameterValue=vpc-xxxxxxxx ParameterKey=SubnetId,ParameterValue=subnet-xxxxxxxx ParameterKey=KeyName,ParameterValue=xxxxxxxx
```

# Delete

```
../cfn_delete.sh RancherMini 
```

# Requirement
- [AWS Management Console CloudFormation](https://console.aws.amazon.com/cloudformation)
- [AWS CLI (AWS Command Line Interface)](https://aws.amazon.com/cli)

# Author
[nmrmsys](https://github.com/nmrmsys)

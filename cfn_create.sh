#!/bin/sh
# http://docs.aws.amazon.com/cli/latest/reference/cloudformation/create-stack.html
NO_PRM=F
if [ "$1" = "" ]; then NO_PRM=T; fi
if [ "$2" = "" ]; then NO_PRM=T; fi
if [ "$NO_PRM" = "T" ]; then
  echo "usage: cfn_create.sh <stack name> <template file> [more parameters]"
  exit 1
fi
SN=$1
shift
TB=$1
shift
# aws --profile pf --region ap-northeast-1 cloudformation create-stack --stack-name sn --template-body fileb://tb.yaml --parameters ParameterKey=Parm1,ParameterValue=test1 ParameterKey=Parm2,ParameterValue=test2
aws cloudformation create-stack --stack-name $SN --template-body fileb://$TB $1 $2 $3 $4 $5 $6 $7 $8 $9

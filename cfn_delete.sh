#!/bin/sh
# http://docs.aws.amazon.com/cli/latest/reference/cloudformation/delete-stack.html
NO_PRM=F
if [ "$1" = "" ]; then NO_PRM=T; fi
if [ "$NO_PRM" = "T" ]; then
  echo "usage: cfn_delete.sh <stack name> [more parameters]"
  exit 1
fi
SN=$1
shift
# aws --profile pf --region ap-northeast-1 cloudformation delete-stack --stack-name sn
aws cloudformation delete-stack --stack-name $SN $1 $2 $3 $4 $5 $6 $7 $8 $9

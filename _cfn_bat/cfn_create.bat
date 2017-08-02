@echo off
rem http://docs.aws.amazon.com/cli/latest/reference/cloudformation/create-stack.html
set NO_PRM=F
if "%1"=="" set NO_PRM=T
if "%2"=="" set NO_PRM=T
if "%NO_PRM%"=="T" (
  echo usage: cfn_create.bat ^<stack name^> ^<template file^> [more parameters]
  exit /b 1
)
set SN=%1
shift
set TB=%1
shift
rem aws --profile pf --region ap-northeast-1 cloudformation create-stack --stack-name sn --template-body fileb://tb.yaml --parameters ParameterKey=Parm1,ParameterValue=test1 ParameterKey=Parm2,ParameterValue=test2
aws cloudformation create-stack --stack-name %SN% --template-body fileb://%TB% %1 %2 %3 %4 %5 %6 %7 %8 %9

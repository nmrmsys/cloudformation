@echo off
rem http://docs.aws.amazon.com/cli/latest/reference/cloudformation/delete-stack.html
set NO_PRM=F
if "%1"=="" set NO_PRM=T
if "%NO_PRM%"=="T" (
  echo usage: cfn_delete.bat ^<stack name^> [more parameters]
  exit /b 1
)
set SN=%1
shift
rem aws --profile pf --region ap-northeast-1 cloudformation delete-stack --stack-name sn
aws cloudformation delete-stack --stack-name %SN% %1 %2 %3 %4 %5 %6 %7 %8 %9

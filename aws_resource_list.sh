#!/bin/bash

#####################
#### Author:Syed Hussaini
#### Description: Script to check state of resources in aws
#####################

echo "###############s3 buckets###############"

echo

s3="aws s3 ls"

s3_output=echo $s3

if [ -z $s3_output ]; then
    echo "There are no buckets available"
    echo
fi

echo "##########ec2 instances#############"

echo

ec2=$(aws ec2 describe-instances --region us-east-1 | jq '.[]')

if [ "$ec2" == [] ]; then
     echo "There are no instances available"
fi




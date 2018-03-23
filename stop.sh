#!/bin/bash
echo "Please enter instance tag you want to stop."
read instance_tag
echo $instance_tag
if [ "$instance_tag" == "boot-order: 1" ]
then
echo "stop $instance_tag"
aws ec2 stop-instances --instance-ids  i-0e612650b016c4124

aws ec2 stop-instances --instance-ids i-0f7a059114ea31e74
aws ec2 stop-instances --instance-ids i-05cba36a4f815dc67
fi
if [ "$instance_tag" == "boot-order: 2" ]
then
echo "stop $instance_tag"
aws ec2 stop-instances --instance-ids i-0f7a059114ea31e74
aws ec2 stop-instances --instance-ids i-05cba36a4f815dc67
aws ec2 stop-instances --instance-ids i-0e612650b016c4124
fi

if [ "$instance_tag" == "boot-order: 3" ]

then

echo "stop $instance_tag"

aws ec2 stop-instances --instance-ids i-0f7a059114ea31e74

aws ec2 stop-instances --instance-ids i-0e612650b016c4124

aws ec2 stop-instances --instance-ids i-0f7a059114ea31e74


fi


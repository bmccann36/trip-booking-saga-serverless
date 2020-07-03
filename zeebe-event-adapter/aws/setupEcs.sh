#! /bin/bash
## cluster config
ecs-cli configure --cluster zeebe-lambda-worker --default-launch-type EC2 --config-name zb-cfg --region us-east-1

## create cluster
ecs-cli up --capability-iam --size 1 --instance-type t2.micro --cluster-config zb-cfg

## set it up as a service
ecs-cli compose service up --cluster-config zb-cfg --create-log-groups 

## scale the service
ecs-cli compose service scale 2 --cluster-config zb-cfg


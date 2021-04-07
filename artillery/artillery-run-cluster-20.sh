#!/bin/bash

# this configuration created about 1000 requests per second with the following configuration:
#   phases:
#     - duration: 60
#       arrivalRate: 5
#       name: Warm up
#     - duration: 120
#       arrivalRate: 5
#       rampTo: 50
#       name: Ramp up load
#     - duration: 600
#       arrivalRate: 50
#       name: Sustained load

# you must provision a cluster on ECS first, mine is 'artillery-cluster'
artillery run-test  \
    --cluster artillery-cluster \
    --region us-east-1 \
    --count 20 \
    --launch-config '{"ulimits":[{"name":"nofile","softLimit":"16384","hardLimit":"16384"}]}' \
    --launch-type ecs:fargate config.yaml

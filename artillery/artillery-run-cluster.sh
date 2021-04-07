#!/bin/bash

# you must provision a cluster on ECS first, mine is 'artillery-cluster'
artillery run-test  \
    --cluster artillery-cluster \
    --region us-east-1 \
    --count 25 \
    --launch-config '{"ulimits":[{"name":"nofile","softLimit":"16384","hardLimit":"16384"}]}' \
    --launch-type ecs:fargate config.yaml

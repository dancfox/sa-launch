#!/bin/bash

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out \
  --schedule "at(2021-04-06T11:15:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=1000,MaxCapacity=1000
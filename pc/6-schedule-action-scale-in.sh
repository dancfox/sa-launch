#!/bin/bash

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in1 \
  --schedule "at(2021-04-14T16:35:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in2 \
  --schedule "at(2021-04-14T16:55:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in3 \
  --schedule "at(2021-04-14T17:15:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in4 \
  --schedule "at(2021-04-14T17:35:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

  aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in5 \
  --schedule "at(2021-04-14T17:55:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in6 \
  --schedule "at(2021-04-14T18:15:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in7 \
  --schedule "at(2021-04-14T18:35:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in8 \
  --schedule "at(2021-04-14T18:55:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

  aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in9 \
  --schedule "at(2021-04-14T19:15:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0

aws application-autoscaling put-scheduled-action --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in \
  --schedule "at(2021-04-14T19:35:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=0,MaxCapacity=0
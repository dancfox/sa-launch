#!/bin/bash

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out1 \
  --schedule "at(2021-04-14T16:20:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out2 \
  --schedule "at(2021-04-14T16:40:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out3 \
  --schedule "at(2021-04-14T17:00:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out4 \
  --schedule "at(2021-04-14T17:20:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out5 \
  --schedule "at(2021-04-14T17:40:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out6 \
  --schedule "at(2021-04-14T18:00:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out7 \
  --schedule "at(2021-04-14T18:20:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out8 \
  --schedule "at(2021-04-14T18:40:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out9 \
  --schedule "at(2021-04-14T19:00:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500

aws application-autoscaling put-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-out17 \
  --schedule "at(2021-04-14T19:20:00)" \
  --timezone "America/Denver" \
  --scalable-target-action MinCapacity=500,MaxCapacity=500
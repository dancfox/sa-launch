#!/bin/bash

aws application-autoscaling delete-scheduled-action \
  --service-namespace lambda \
  --scalable-dimension lambda:function:ProvisionedConcurrency \
  --resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
  --scheduled-action-name scale-in 

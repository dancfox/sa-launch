#!/bin/bash

aws application-autoscaling describe-scaling-activities \
--service-namespace lambda \
--scalable-dimension lambda:function:ProvisionedConcurrency \
--resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod
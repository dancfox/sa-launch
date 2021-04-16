#!/bin/bash

aws application-autoscaling register-scalable-target \
--service-namespace lambda \
--resource-id function:ticketing-app-putItemFunction-8IWZ3N5MFNHX:prod \
--min-capacity 0 --max-capacity 5000 \
--scalable-dimension lambda:function:ProvisionedConcurrency
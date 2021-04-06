#!/bin/bash

aws lambda update-alias --function-name ticketing-app-putItemFunction-8IWZ3N5MFNHX --name prod --function-version 2 --description "Production alias"
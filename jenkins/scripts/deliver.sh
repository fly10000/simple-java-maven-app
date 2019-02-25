#!/bin/bash -ilex
#export PATH=$PATH:/usr/bin/scp
scp -r target/my-app-1.0.0.jar root@10.15.4.48:/opt/jenkins/

#!/usr/bin/env bash

source /etc/profile
scp -r target/tm-0.0.1-SNAPSHOT.jar root@10.15.4.48:/opt/jenkins/

#!/usr/bin/env bash
su - root <<EOF
scp target/tm-0.0.1-SNAPSHOT.jar root@10.15.4.48:/opt/jenkins/
pwd;
exit;
EOF

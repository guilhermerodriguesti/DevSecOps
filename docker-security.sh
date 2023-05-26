#!/bin/bash

git clone https://github.com/docker/docker-bench-security.git

cd docker-bench-security/

sudo sh docker-bench-security.sh > /tmp/bench1.out

sudo auditctl -l

sudo auditctl -w /var/lib/docker -k "docker lib"

sudo sh docker-bench-security.sh > /tmp/bench2.out

diff /tmp/bench1.out /tmp/bench2.out
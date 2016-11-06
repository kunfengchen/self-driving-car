#!/bin/bash

apt-get clean
rm -rf /docker_build
rm -rf /tmp/* /var/tmp/*
rm -rf /var/lib/apt/lists/*

rm -f /etc/ssh/ssh_host_*

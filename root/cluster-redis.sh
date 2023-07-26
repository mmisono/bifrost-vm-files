#!/bin/bash

redis-server /root/redis/6380/redis.conf
redis-server /root/redis/6381/redis.conf
redis-server /root/redis/6382/redis.conf
redis-server /root/redis/6383/redis.conf
#ip link set lo down
yes yes | redis-cli --tls --cert /etc/tls/redis.crt --key /etc/tls/redis.key --cacert /etc/tls/ca.crt --cluster create 10.1.1.222:6380 10.1.1.222:6381 10.1.1.222:6382 10.1.1.222:6383


#!/bin/bash

[[ $1 == "s" ]] && ./tls_server -T -k all -p $2 &
[[ $1 == 'c' ]] && ~/tls_client_13 -T -k all -g $((2<<30)) -s 10.1.1.200 -p $2

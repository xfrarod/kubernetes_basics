#!/bin/bash

while true; do
	#curl -I 10.96.99.29:80
	curl -I 10.96.99.29:80 2>/dev/null | head -n 1 | cut -d$' ' -f2
done

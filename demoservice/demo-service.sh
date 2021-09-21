#!/bin/bash
echo "This should be the exit IP of your VPN, if working correctly"
while date; do curl --silent wtfismyip.com/text; sleep 30; echo; done

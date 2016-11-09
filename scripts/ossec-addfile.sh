#!/bin/bash
# Script to inspect new switches log files automagically to ossec
# Author: Alberto Losada - source: http://perezbox.com/2013/03/ossec-for-website-security-part-i/

for FILE in $( find /var/log/syslog/cisco/ \( -iname "*.log" \) ); do
        /var/ossec/bin/util.sh addfile ${FILE};
done


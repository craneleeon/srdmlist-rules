#!/bin/bash
cat ./sr_top500_whitelist_ad.conf | awk -F, '($3 == "Reject"){print "  - "$1","$2",REJECT"}' | awk '{gsub(/,\./,",")}1' > clash_ad_rules.txt

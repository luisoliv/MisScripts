#!/bin/bash
#this small function retrieve how much 'data'/bandwidth i have spent in current session in KiloBytes

#  the NIC's name here, defaults uses wlo1 because its my most used one
$NIC='wlo1'
RXME=$(cat /sys/class/net/$NIC/statistics/rx_bytes)
TXME=$(cat /sys/class/net/$NIC/statistics/tx_bytes)
RXME=$(($RXME/1024))
TXME=$(($TXME/1024))
echo "For wlo1:"
echo "Received $RXME KBs"
echo "Transmitted $TXME KBs"
echo "Total used: $(($RXME+$TXME)) KBs"

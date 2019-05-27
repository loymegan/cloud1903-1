#!/usr/bin/env bash


netip="10.0.111"
for hostip in `seq 2 254`
do
  {
  ping -c1 $netip.$hostip >>/dev/null
  if [ $? -eq 0 ];then
	echo "$netip.$hostip" >>aliveip.txt
  fi
  }&
done
wait


#!/bin/bash
# First stage generic randomised loads
# Currently only way to set path. todo- set parameter and use yaml
{
curl_path="http://mbiii.r4t.net"
delay_span=3000
curl_range=2000

#Create first random field - script delay
echo "Delay span is: " $delay_span
script_delay=$(($RANDOM % $delay_span))
echo "Script Delay is: " $script_delay
sleep $script_delay
curl_count=$(($RANDOM % $curl_range))
echo "Curl count is: " $curl_count

for i in {1..$curl_count}
 do
 curl $curl_path
done
#End of curl fork
}&

delay_span_stress=3000
stress_range_cpu=16
stress_range_io=16
stress_range_vm=16
stress_range_fork=16
stress_range_copyfile=500
stress_range_timeout=60
#Create first random field - script delay
echo "Stress Delay span is: " $delay_span_stress
stress_script_delay=$(($RANDOM % $delay_span_stress))
echo "Stress Script Delay is: " $stress_script_delay
sleep $stress_script_delay

stress-ng --cpu $stress_range_cpu --io $stress_range_io --vm $stress_range_vm --vm-bytes 128M --fork $stress_range_fork --copy-file $stress_range_copyfile   --timeout 120s

echo done

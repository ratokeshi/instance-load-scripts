#!/bin/bash
# First stage generic randomised loads
# Currently only way to set path. todo- set parameter and use yaml
{
curl_path="http://nova.r4t.net"
curl_path_admin="http://nova.r4t.net/wp-admin"
curl_path_east_admin="http://nova.r4t.net/wp-admin"
curl_path_west_admin="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"
curl_path_nova_admin="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"
curl_path_east="http://nova.r4t.net"
curl_path_west="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"
curl_path_nova="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"
curl_path_attack="http://nova.r4t.net/?s=String+userLoginQuery+%3D+++%22SELECT+user_id%2C+username%2C+password_hash+FROM+users+WHERE+username+%3D+%27%22+++%2B+request.getParameter%28%22user%22%29+%2B+%22%27%22%3B"
curl_path_attack_east="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"
curl_path_attack_west="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"
curl_path_attack_nova="http://elb-wp-alb-gan-1057669595.us-east-1.elb.amazonaws.com/2020/06/29/generic-server-info/"


delay_span=120
curl_range=10

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
 curl $curl_path_admin
 curl $curl_path_east_admin
 curl $curl_path_west_admin
 curl $curl_path_nova_admin
 curl $curl_path_east
 curl $curl_path_west
 curl $curl_path_nova
 curl $curl_path_attack
 curl $curl_path_attack_east
 curl $curl_path_attack_west
 curl $curl_path_attack_nova
done
#End of curl fork
}&

delay_span_stress=5
stress_range_cpu=1
stress_range_io=1
stress_range_vm=1
stress_range_fork=1
stress_range_copyfile=100
stress_range_timeout=600
#Create first random field - script delay
echo "Stress Delay span is: " $delay_span_stress
stress_script_delay=$(($RANDOM % $delay_span_stress))
echo "Stress Script Delay is: " $stress_script_delay
sleep $stress_script_delay

stress-ng --cpu $stress_range_cpu --io $stress_range_io --vm $stress_range_vm --vm-bytes 128M --fork $stress_range_fork --copy-file $stress_range_copyfile   --timeout 120s

echo done

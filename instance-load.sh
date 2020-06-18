# First stage generic randomised loads
# Currently only way to set path. todo- set parameter and use yaml
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

echo done

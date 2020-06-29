<?php
echo "Server Info and MetaData:<br>";
echo "local-hostname: " . file_get_contents("http://169.254.169.254/latest/meta-data/local-hostname") . "<br>";
echo "availability-zone: " . file_get_contents("http://169.254.169.254/latest/meta-data/placement/availability-zone") . "<br>";
echo "instance-id: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-id") . "<br>";
echo "ami-id: " . file_get_contents("http://169.254.169.254/latest/meta-data/ami-id") . "\n";
echo "ami-launch-index: " . file_get_contents("http://169.254.169.254/latest/meta-data/ami-launch-index") . "<br>";
echo "ami-manifest-path: " . file_get_contents("http://169.254.169.254/latest/meta-data/ami-manifest-path") . "<br>";
echo "hostname: " . file_get_contents("http://169.254.169.254/latest/meta-data/hostname") . "<br>";
echo "instance-action: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-action") . "<br>n";
echo "instance-life-cycle: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-life-cycle") . "<br>";
echo "instance-type: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-type") . "<br>";
echo "local-hostname: " . file_get_contents("http://169.254.169.254/latest/meta-data/local-hostname") . "<br>";
echo "local-ipv4: " . file_get_contents("http://169.254.169.254/latest/meta-data/local-ipv4") . "<br>";
echo "mac: " . file_get_contents("http://169.254.169.254/latest/meta-data/mac") . "<br>";
echo "profile: " . file_get_contents("http://169.254.169.254/latest/meta-data/profile") . "<br>";
echo "reservation-id: " . file_get_contents("http://169.254.169.254/latest/meta-data/reservation-id") . "<br>";
echo "security-groups: " . file_get_contents("http://169.254.169.254/latest/meta-data/security-groups") . "<br>";
phpinfo();
?>

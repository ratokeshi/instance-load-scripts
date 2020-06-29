<?php
echo "Server Info and MetaData:<br>";
echo "instance-id: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-id") . "\n";
echo "local-hostname: " . file_get_contents("http://169.254.169.254/latest/meta-data/local-hostname") . "\n";
echo "ami-id: " . file_get_contents("http://169.254.169.254/latest/meta-data/ami-id") . "\n";
echo "ami-launch-index: " . file_get_contents("http://169.254.169.254/latest/meta-data/ami-launch-index") . "\n";
echo "ami-manifest-path: " . file_get_contents("http://169.254.169.254/latest/meta-data/ami-manifest-path") . "\n";
echo "hostname: " . file_get_contents("http://169.254.169.254/latest/meta-data/hostname") . "\n";
echo "instance-action: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-action") . "\n";
echo "instance-life-cycle: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-life-cycle") . "\n";
echo "instance-type: " . file_get_contents("http://169.254.169.254/latest/meta-data/instance-type") . "\n";
echo "local-hostname: " . file_get_contents("http://169.254.169.254/latest/meta-data/local-hostname") . "\n";
echo "local-ipv4: " . file_get_contents("http://169.254.169.254/latest/meta-data/local-ipv4") . "\n";
echo "mac: " . file_get_contents("http://169.254.169.254/latest/meta-data/mac") . "\n";
echo "profile: " . file_get_contents("http://169.254.169.254/latest/meta-data/profile") . "\n";
echo "reservation-id: " . file_get_contents("http://169.254.169.254/latest/meta-data/reservation-id") . "\n";
echo "security-groups: " . file_get_contents("http://169.254.169.254/latest/meta-data/security-groups") . "\n";
phpinfo();
?>

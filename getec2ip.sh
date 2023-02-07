# v1 - private ip only
# #!/bin/sh
# ip=`cat ~/etc/hostname | egrep -o '[0-9]+\-[0-9]+\-[0-9]+\-[0-9]+'`
# echo "let ip = '${ip//-/.}'" > public/ec2ip.js

# v2 - private & public ip's
PRIVATE_IP=`cat /etc/hostname | egrep -o '[0-9]+\-[0-9]+\-[0-9]+\-[0-9]+'`
PUBLIC_IP=`curl http://checkip.amazonaws.com`

cd /home/ubuntu/
mkdir ec2ip
echo "let private_ip = '${PRIVATE_IP//-/.}'" >> ec2ip/ec2ip.js
echo "let public_ip = '${PUBLIC_IP}'" >> ec2ip/ec2ip.js
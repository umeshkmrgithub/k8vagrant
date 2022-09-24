#!/bin/bash

# Enable ssh password authentication
echo "[TASK 1] Enable ssh password authentication"
sed -i 's/^PasswordAuthentication .*/PasswordAuthentication yes/' /etc/ssh/sshd_config
echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config
systemctl reload sshd

# Set Root password
echo "[TASK 2] Set root password"
echo -e "Qazwsx@123\nQazwsx@123" | passwd root >/dev/null 2>&1
echo "[TASK 3] Set vagrant password"
echo -e "Qazwsx@123\nQazwsx@123" | passwd root >/dev/null 2>&1

cat <<EOF >> /etc/hosts 
172.16.16.10 k8mstr1 k8mstr1.k8lab.com
172.16.16.20 k8wrkr1 k8wrkr1.k8lab.com
172.16.16.30 k8wrkr2 k8wrkr2.k8lab.com

EOF



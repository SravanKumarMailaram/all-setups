yum install java-21-amazon-corretto -y
sudo yum install git -y
sudo wget -O /etc/yum.repos.d/jenkins.repo     https://pkg.jenkins.io/rpm-stable/jenkins.repo
yum install jenkins -y
systemctl start jenkins
systemctl status jenkins

To Get Build Executor Online in Jenkins Status : We need to use this below commands

sudo mkdir -p /var/tmp_disk
sudo chmod 1777 /var/tmp_disk
sudo mount --bind /var/tmp_disk /tmp
echo '/var/tmp_disk /tmp none bind 0 0' | sudo tee -a /etc/fstab
sudo systemctl mask tmp.mount
df -h /tmp
sudo systemctl restart jenkins

After using the above commands still the Build Executor is offline use this below commands. 

sudo systemctl daemon-reload
sudo systemctl restart jenkins
sudo systemctl status jenkins
df -h /tmp
findmnt /tmp

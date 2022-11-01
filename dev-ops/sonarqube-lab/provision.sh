#/usr/bin/bash
useradd sonar
yum install -y wget unzip java-11-openjdk-devel
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.7.0.61563.zip
unzip sonarqube-9.7.0.61563.zip -d /opt/
mv /opt/sonarqube-9.7.0.61563 /opt/sonarqube
chown -R sonar:sonar /opt/sonarqube
touch /etc/systemd/system/sonar.service
echo > /etc/systemd/system/sonar.service
cat <<EOT >> /etc/systemd/system/sonar.service
[Unit]
Description=Sonarqube service
After=syslog.target network.target
[Service]
Type=forking
ExecStart=/opt/sonarqube/bin/linux-x86-64/sonar.sh start
ExecStop=/opt/sonarqube/bin/linux-x86-64/sonar.sh stop
User=sonar
Group=sonar
Restart=always
[Install]
WantedBy=multi-user.target
EOT
service sonar start
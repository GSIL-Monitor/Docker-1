mkdir -p /var/jenkins_home/data/docker /var/jenkins_home/jenkins_home/.ssh /var/jenkins_home/backup /var/jenkins_home/jenkins_home /opt/jdk /opt/maven
tar -zxvf apache-maven-3.5.4-bin.tar.gz -C /opt/maven/
tar -zxvf jdk-8u112-linux-x64.tar.gz -C /opt/jdk/
cp -r /opt/maven/apache-maven-3.5.4/* /opt/maven/ && cp -r /opt/jdk/jdk1.8.0_112/* /opt/jdk/

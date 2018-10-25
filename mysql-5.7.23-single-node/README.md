mysql5.7.23的docker版本说明：
----------
1. 基于oraclelinux:7-slim的官方镜像，yum方式安装的mysql包，用于mysql单节点。
2. 由于oraclelinux和centos类似，所以该系统的其他附属包一并使用yum install方式安装（yum clean all是个好习惯）。
3. 有关docker-compose的目录结构：
      - /var/lib/mysql:/var/lib/mysql
      - /var/log/mysql:/var/lib/mysql-logs
      - /etc/my.cnf:/etc/my.cnf
      - /etc/localtime:/etc/localtime:ro

1. mysql的启动方式采用docker-compose
2. 其他事项：注意目录的读写权限，否则容器启动报错。
3. 单节点启动
4. 数据库初始化方式：  
docker exec -it mysql /bin/bash  
mysqld_safe --user=mysql --skip-grant-tables --skip-networking &   
select * from mysql.user;  
create user 'root'@'%' identified by 'admin123';  
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'admin123' WITH GRANT OPTION;  
flush privileges;  
1. 有关主从双节点docker部署方式，陆续更新。
2. 如有疑问，请加qq：263106977
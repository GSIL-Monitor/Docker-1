zabbix+mysq+grafanax的docker版本说明：
----------
1. 本docker-compose.yml文件，是基于zabbix官方的docker版本，mysql5.7官方版本，grafana官方版本。
2. 有关zabbix_server和mysql的数据卷挂载也请按照实际情况来做。
3. 其中的用户名和密码部分，注意前后衔接。
1. nginx部分主要是用了upstream方式，详见docker-compose.yml的nginx部分
2. granfa部分可以直接IP+端口打开，相关知识见granfa的docker部分
3. 其他事项：zabbix配套的3.4.6客户端，直接解压编译
cd zabbix-3.4.6 && yum install pcre-devel -y && ./configure --prefix=/usr/local/zabbix --enable-agent
1. 有关zabbix_agent.conf部分:Server 这一项需要填成zabbix-server docker镜像的ip地址
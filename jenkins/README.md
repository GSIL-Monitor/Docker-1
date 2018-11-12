jenkins的docker版本说明：
----------
1. 本docker-compose.yml文件，是基于jenkins官方的docker版本，官方版本的信息见https://hub.docker.com/r/jenkins/jenkins/tags/
2. 有关jenkins的数据卷挂载也请按照实际情况来做。
3. 有关jenkins的运做事在jenkins1中运行的。
1. jenkins的ssh互相信任，是jenkins容器和远程机器的ssh的互相信任，注意.ssh/目录rsa和pub文件权限。
2. 有关java_script/maven/java/部分，可以用数据卷挂载方式调用。
3. 有关jenkins的插件更新部分，见privoxy,jenkin插件接口.

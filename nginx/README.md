nginx的docker版本说明：
----------
1. 基于centos的官方镜像，yum方式安装的nginx包，主要用于nginx的静态html文件展示用。
2. 有关upstream代理的docker版本，请参见其他版本的nginx轮子。
3. 有关Dockerfile的镜像对应的应用程序的目录结构为：
（mkdir -p data/conf data/html data/log  data/html/website）
[root@website data]# tree
.
├── conf  
├── conf.d    
│   └── website.conf  
├── html  
│   └── website  
│       ├── 20181016114942.jpg  
│       ├── app-release.apk  
│       └── index.html  
└── log  
    ├── access.log  
    └── error.log  

1. nginx的启动方式采用docker-compose
2. 其他事项：注意目录的读写权限，否则容器启动报错。
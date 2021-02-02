#################################
Dokuwiki
#################################

Dokuwiki是一款简单易用、用途广泛的开源wiki软件，它不需要数据库。它以其简洁、可读的语法受到用户的喜爱。易于维护、备份和集成，使其成为管理员的最爱。内置的访问控制和认证连接器使DokuWiki在企业环境中特别有用，其活跃的社区所贡献的大量插件使其超越了传统Wiki的使用范围。

本章讲解如何使用Docker安装Dokuwiki。

准备docker-compose.yml文件
=======================================
下载dokuwiki目录文件，URL：https://github.ibm.com/fsd-training/devops/tree/master/dokuwiki

查阅dokuwiki目录下文件：

#. docker-compose.yml  # docker-compose命令使用的文件
#. start.sh # Linux 用户使用的 Shell 脚本，仅供Windows用户参考

启动 Dokuwiki
====================
命令行进入dokuwiki目录下，执行start.sh脚本。容器服务启动后，访问页面地址：http://localhost:8082，如图所示：


.. image:: images/dokuwiki-index.png
   :width: 800px


应用设置
==================
第一次使用时，需要访问 http://$IP:$PORT/install.php 地址对Wiki进行安装设置。设置过程中，可以在界面右上角选择适合自己的语言，如图所示：


.. image:: images/dokuwiki-install.png
   :width: 800px


一旦完成设置，重启容器，以管理员身份登录，在“admin/Configuration”设置面板中设置 "使用漂亮的URLs(Use nice URLs)"为.htaccess，并勾选 "在URLs中使用斜杠作为命名空间分隔符"，以启用漂亮的URLs，你会在http://$IP:$PORT/找到webui，更多信息请参阅Dokuwiki(https://www.dokuwiki.org/dokuwiki/)。


参考
=========
#. https://hub.docker.com/r/linuxserver/dokuwiki
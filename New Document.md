# 一系统说明：#
1. 后台以node.js做服务。下载地址:[http://nodejs.org](http://nodejs.org)
2. mongodb做数据库。下载地址: [http://www.mongodb.com](http://www.mongodb.com)
3. 前台用bower管理代码库。jade做模版引擎。
# 二安装说明：#
1. 下载git：window :[https://windows.github.com](https://windows.github.com)OSX :[https://mac.github.com](https://windows.github.com)
2. 安装git，然后在电脑上建立一个工作区，进入到此目录， 执行 git clone [https://github.com/zhangjunmin/BLOG.git](https://github.com/zhangjunmin/BLOG.git)
3. 安装nodejs
4. 安装相应工具和模块 模块 :sudo npm install -g express@3.9.0管理工具 :sudo npm install -g bower 语言 :sudo npm install -g coffee-script 测试工具 :sudo npm install -g mocha
5. 安装本网站依赖 进入到BLOG文件夹 npm install bower install bootstrap underscore moment backbone requirejs
# 启动网站: #
1. 启动数据库服务： 解压数据库，建立一个文件夹data作为数据库 bin\mongod --dbpath data 
2. 执行 bin\mongo 然后use video 建立数据库db.videos.find()建立一个文档集合，相当于一个表 
3. coffee server.coffee，如果命令行打印出server is running at 3000，说明网站已成功启动 4,127.0.0.1:3000就能访问我们的网站了。
# 单元测试: #
1. 命令行 js文件: mocha file coffee文件:mocha --compilers coffee:coffee-script/register file
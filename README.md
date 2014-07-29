说明，该网站依赖express bower coffee

sudo npm install -g express

sudo npm install -g bower

sudo npm install -g coffee-script

bower install bootstrap underscore moment backbone requirejs

单元测试

  1.sudo npm install -g mocha
  2.package.json "should":"*"
  3.命令行
    js文件: mocha file
    coffee文件:mocha --compilers coffee:coffee-script/register file
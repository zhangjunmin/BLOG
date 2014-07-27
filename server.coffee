###
#this is a Web Server
#author : junminZhang
#date   : 2014-07－23
###

#dependencies

express = require 'express'
path    = require 'path'
http    = require 'http'
routes  = require './routes/index'
user    = require './routes/user'

app = express()

#middleware
app.set('port',process.env.PORT||3000)
app.set('views',path.join(__dirname,'views'))
app.set('view engine','jade')
app.use(express.favicon())
app.use(express.logger('dev'))
app.use(express.json())
app.use(express.urlencoded())
app.use(express.methodOverride())
app.use(app.router)
app.use(express.static(path.join(__dirname,'public')))
app.use(express.static(path.join(__dirname,'bower_components')))
app.use(express.errorHandler()) if 'development' is app.get('env')

app.get('/',routes.index)
app.get('/users',user.list)

app.listen app.get('port'), ->
  console.log("server is running at #{app.get('port')}")
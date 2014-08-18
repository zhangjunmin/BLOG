###
#this is a Web Server
#author : junminZhang
#date   : 2014-07－23
###

#dependencies

express = require 'express'
path    = require 'path'
http    = require 'http'
mongoose= require 'mongoose'
routes  = require './routes/index'
video   = require './routes/video'

app     = express()
mongoose.connect 'mongodb://localhost/video'
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
app.use(express.static(path.join(__dirname,'pages')))
app.use(express.errorHandler()) if 'development' is app.get('env')

app.get('/',routes.index)
app.get('/videos',video.list)
app.get('/new',video.post)

app.listen app.get('port'), ->
  console.log("server is running at #{app.get('port')}")
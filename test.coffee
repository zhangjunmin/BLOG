mongoose = require 'mongoose'
vedioSchema = require './schema/video'

mongoose.connect("mongodb://localhost/video")

Model = mongoose.model 'video', vedioSchema

v = new Model
  name   : '变形金刚',
  summary: '美国科幻',
  reate_date : '2014',
  cover       : 'images/123.jpg',
  url         : 'flashes/123.flash'

v.save (err,data) ->
  console.log('success') unless err
  console.log data


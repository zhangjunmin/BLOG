mongoose = require "mongoose" 
Model = require './model/video'
require 'should'

mongoose.connect("mongodb://localhost/video")


describe 'fetch videos', ->
  it 'all videos', (done)->
     Model.retire (res)->
       res.length.should.eql(1)
       done()





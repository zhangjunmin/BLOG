mongoose = require "mongoose" 
Model = require './model/video'
require 'should'

mongoose.connect("mongodb://localhost/video")


describe 'fetch videos', ->
  it 'all videos', (done)->
     Model.fetch (err,videos)->
      	videos.length.should.eql(2) unless err
      	done()

  it 'query one',(done) ->
  		Model.findOneByID '53d9271e30d67ca40ca81e5d', (err,video)->
  			video.name.should.eql('楚门的世界') unless err
  			done()
return

describe 'save video', ->
	it 'create video',(done)->
		m = new Model
			name : "楚门的世界"
			summary : "由金凯瑞主演的正剧，表达了一个人对命运的抗争."
			cover : 'images/789.jpg'
			url : 'flashes/789.flash'
		m.add (video)->
			(video isnt null).should.be.true
			done()

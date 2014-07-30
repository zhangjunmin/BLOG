##
#define model
#author:junminzhang
#date:2014-07-29
##

mongoose = require 'mongoose'
Schema = require '../schema/video'

Model = mongoose.model 'video', Schema

#query
Model.retire = (callback) ->
	Model.find null,(err,videos)->
		if err then callback(null) else callback(videos)

Model.prototype.add = (callback)->
	this.save (err,video)->
		if err then callback(null) else callback(video)

module.exports = Model		
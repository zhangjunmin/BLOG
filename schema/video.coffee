##
#define schema
#author:junminzhang
#date:2014-07-24
##

mongoose = require 'mongoose'

#video
VideoSchema = new mongoose.Schema
  name        : String,
  summary     : String,
  create_date : String,
  cover       : String,
  url         : String,
  plays      : { type : Number ,default : 0 }


VideoSchema.statics =
	fetch : (callback) -> 
		this.find(null)
		.exec(callback)

	findOneByID : (id,callback) ->
		this.findOne({_id:id})
		.exec(callback)


module.exports = VideoSchema  
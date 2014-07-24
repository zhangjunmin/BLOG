##
#define schema
#author:junminzhang
#date:2014-07-24
##

mongoose = require 'mongoose'

#video
videoSchema = new mongoose.Schema
  name        : String,
  summary     : String,
  create_date : String,
  cover       : String,
  url         : String,
  plays      : { type : Number ,default : 0 }


module.exports = videoSchema  
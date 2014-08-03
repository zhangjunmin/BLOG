##
#define model
#author:junminzhang
#date:2014-07-29
##

mongoose = require 'mongoose'
VideoSchema = require '../schema/video'

Model = mongoose.model 'video', VideoSchema

module.exports = Model		
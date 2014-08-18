#require

Video = require '../model/video'

#retire all videos
exports.list = (req,res) ->
  Video.fetch (err,videos) ->
    res.send videos unless err

exports.find = (req,res) ->
  res.render 'new',
    title : '创建新的视频'
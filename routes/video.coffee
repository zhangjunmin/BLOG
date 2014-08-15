#require

Video = require '../model/video'

#retire all videos
exports.list = (req,res) ->
  Video.fetch (err,videos) ->
    res.send videos unless err
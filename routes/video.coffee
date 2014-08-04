#require

Video = require '../model/video'

exports.list = (req,res) ->
	Video.fetch (err,videos) ->
		res.send videos unless err
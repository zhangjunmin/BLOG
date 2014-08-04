###
#
#BackboneModel
#
###

VideoModel = Backbone.Model()


VideoCollection = Backbone.Collection.extend
	model : VideoModel,
	url   : "/videos"
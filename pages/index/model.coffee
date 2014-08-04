###
#
#BackboneModel
#
###

VideoModel = Backbone.Model


window.VideoCollection = Backbone.Collection.extend
	model : VideoModel,
	url   : "/videos"



VideoView = Backbone.View.extend
  className : 'item'
  render : -> 
    "<li>#{this.model.get('name')}</li>"


window.AppView = Backbone.View.extend
	initialize : (videos) ->
		this.listenTo this.collection, 'add', this.render

	el     : '#videos'
	render : (model)->
		console.log model.toJSON()
		this.$el.append(new VideoView({model:model}).render())
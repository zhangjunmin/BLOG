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
	initialize: (model)->
    this.render()
    this.model.on 'change:name',(mod,name) =>
      this.$el.text name
  className : 'item'
  tagName   : 'li'
  render : ->
    this.$el.text this.model.get('name')
    this


window.AppView = Backbone.View.extend
	initialize : (videos) ->
		this.listenTo this.collection, 'add', this.render

	el     : '#videos'
	render : (model)->
		view = new VideoView({model:model})
		this.$el.append(view.$el)
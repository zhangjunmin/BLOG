(->
	self = this
	self.define = (namespace,cb) ->
		self[namespace] = cb()
	)()
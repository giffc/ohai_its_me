window.PostView = Backbone.View.extend
  tagName:    "div"
  className:  "post"
  template:   JST["posts/show"]
  events:
    "click": -> console.debug "click"
    
  initialize: (options) ->
    console.debug "postview.initialize"
    console.debug @model
    _.bindAll @
    @model.on("change", => @render())
  
  expand: ->
    console.debug "expand #{@model.id}"
  
  render: ->
    @$el.html @template(@model.toJSON())
    @
    
    
window.PostsView = Backbone.View.extend
  tagName: "div"
  class: "posts"
  template:   JST["posts/index"]

  initialize: (options) ->
    console.debug "posts view.initialize"
    _.bindAll @
    @views = []
    @initViews()
    @collection.on("add remove reset", @render)
    
  initViews: ->
    console.debug "postsview.initViews"
    console.debug @collection
    @collection.each (post) =>
      console.debug "div: #post_#{post.id}"
      console.debug post
      view = new PostView(model: post, el: "#post_#{post.get('id')}")
      @views.push view
    
  render: ->
    @$el.html @template(data: @collection.toJSON())
    @initViews()
    @
    
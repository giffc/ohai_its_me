window.PostView = Backbone.View.extend
  tagName:    "div"
  className:  "post"
  template:   JST["posts/_post"]
    
  initialize: (options) ->
    _.bindAll @
    @model.on("change", => @render())
  
  render: ->
    @$el.html @template(@model.toJSON())
    @
    
    
window.PostsView = Backbone.View.extend
  tagName: "div"
  class: "posts"
  template:   JST["posts/_posts"]

  initialize: (options) ->
    _.bindAll @
    @views = []
    @initViews()
    @collection.on("add remove reset", @render)
    
  initViews: ->
    @collection.each (post) =>
      view = new PostView(model: post, el: "#post_#{post.get('id')}")
      @views.push view
    
  render: ->
    @$el.html @template(data: @collection.toJSON())
    @initViews()
    @
    

window.DatedAccountPostsView = Backbone.View.extend
  tagName: "div"
  class: "account"
  template: JST["posts/_account"]

  initialize: (options) ->
    _.bindAll @
    @$el.find('.post_expander').click @expand
    @model.posts.on("reset", @render)
    
  expand: ->
    $.ajax
      type: 'GET'
      url: @model.posts.url()
      data:
        date: @model.date
        linked_account_id: @model.linked_account_id
      success: (response) =>
        @model.posts.reset(response.data)

  render: ->
    return if !@model?
    @$el.html @template(@model.toJSON())
    @
    

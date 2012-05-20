window.PostView = Backbone.View.extend
  tagName:    "div"
  className:  "post"
  template:   JST["posts/show"]
    
  initialize: (options) ->
    _.bindAll @
    @model.on("change", => @render())
  
  render: ->
    @$el.html @template(@model.toJSON())
    @
    
    
window.PostsView = Backbone.View.extend
  tagName: "div"
  class: "posts"
  template:   JST["posts/index"]

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
  template: JST["posts/account"]
  # events:  # this clicks on the parent object on the phone
  #   "click div.post_expander": "expand"

  initialize: (options) ->
    _.bindAll @
    @$el.find('.post_expander').click @expand
    #@model.posts.on("reset", @render)
    
  expand: ->
    $.ajax
      type: 'GET'
      url: @model.posts.url()
      data:
        date: @model.date
        linked_account_id: @model.linked_account_id
      success: (response) =>
        @$el.html response
        #@model.posts.reset(response.data)

  render: ->
    @$el.html @template(data: @model.toJSON())
    @
    

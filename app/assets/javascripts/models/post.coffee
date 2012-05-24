window.Post = Backbone.Model.extend
  url: -> "/posts/#{@get('id')}.json"

  initialize: (options) ->
    # nada yet
    
    
window.Posts = Backbone.Collection.extend
  model: Post
  
  
window.DatedAccountPosts = Backbone.Model.extend
  
  initialize: (options) ->
    @posts = (new Posts).reset(options.posts)
    @posts.url = -> "/posts/by_account_and_date.json"
    @date = options.date
    @type = options.type
    @linked_account_id = options.linked_account_id
    
  toJSON: ->
    posts: @posts.toJSON()
    date: @date
    type: @type
    linked_account_id: @linked_account_id

  
window.Post = Backbone.Model.extend

  url: -> "/posts/#{@get('id')}.json"

  initialize: (options) ->
    # nada yet
    
window.Posts = Backbone.Collection.extend
  model: Post
  url: -> "/posts/#{@get('id')}/by_account_and_date.json"

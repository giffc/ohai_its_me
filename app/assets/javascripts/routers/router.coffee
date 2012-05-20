Router = Backbone.Router.extend

  routes: 
    "": "posts"

  posts: ->
    console.debug "route: posts"
    if preloaded_data?
      posts = (new Posts).reset(preloaded_data)
      view = new PostsView collection: posts, el: '.posts'
  
      
window.admin_router = new Router()

Backbone.history.start({pushState: true})

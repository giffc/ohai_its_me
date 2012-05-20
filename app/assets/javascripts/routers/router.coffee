Router = Backbone.Router.extend

  routes: 
    "": "dates"

  dates: ->
    console.debug "route: dates"
    if preloaded_data?
      dates = (new Dates).reset(preloaded_data)
      console.debug dates
      view = new DatesView collection: dates, el: '.dates'
  
      
window.admin_router = new Router()

Backbone.history.start({pushState: true})

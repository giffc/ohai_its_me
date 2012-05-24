
Router = Backbone.Router.extend

  routes: 
    "": "dates"

  dates: ->
    if preloaded_data?
      view = @_createDatesView(preloaded_data)
      $('.dates').html(view.render().el.innerHTML)
  
  _createDatesView: (data) ->
    dates = (new TimelineDates).reset(preloaded_data)
    view = new DatesView collection: dates, el: '.dates'

    
window.admin_router = new Router()

Backbone.history.start({pushState: true})

# earliest_date = null;

Router = Backbone.Router.extend

  routes: 
    "": "dates"

  dates: ->
    if preloaded_data?
      @_createDatesView(preloaded_data)
  
  _createDatesView: (data) ->
    dates = (new TimelineDates).reset(preloaded_data)
    # date_strings = dates.pluck('date')
    # earliest_date = date_strings[date_strings.length - 1]
    view = new DatesView collection: dates, el: '.dates'

    
window.admin_router = new Router()

Backbone.history.start({pushState: true})


# $('#load_more').click (event) ->
#   $.ajax
#     method: 'GET'
#     url: '/posts.html'
#     data:
#       before: earliest_date
#     success: (data) ->
#       console.debug data
#   console.debug "click"
  

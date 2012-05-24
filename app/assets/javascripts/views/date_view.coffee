window.DateView = Backbone.View.extend
  tagName: "div"
  class: "date"

  initialize: (options) ->
    @initViews()
    
  initViews: ->
    @views = []
    _.each @model.accounts, (dated_account_posts) =>
      view = new DatedAccountPostsView(model: dated_account_posts, el: @$el.find(".account_#{dated_account_posts.type}"))
      @views.push view


window.DatesView = Backbone.View.extend
  tagName: "div"
  class: "dates"
  template:   JST["posts/_dates"]

  initialize: (options) ->
    _.bindAll @
    @views = []
    @initViews()
    $('#load_more').click @loadMore
    @collection.on("add reset", @render)
    
  initViews: ->
    @collection.each (date) =>
      view = new DateView(model: date, el: "#date_#{date.get('date')}")
      @views.push view
      
  loadMore: ->
    earliest_date = _.min(@collection.pluck('date'), (date) -> new Date(date))
    $.ajax
      method: 'GET'
      url: '/posts.json'
      data:
        before: earliest_date
      success: (response) =>
        if response.data.length == 0
          $('#load_more').detach()
        else
          @collection.add(response.data)
        
    
  render: ->
    @$el.html @template(data: @collection.toJSON())
    @initViews()
    @

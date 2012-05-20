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
  template:   JST["posts/dates"]

  initialize: (options) ->
    _.bindAll @
    @views = []
    @initViews()
    
  initViews: ->
    @collection.each (date) =>
      view = new DateView(model: date, el: "#date_#{date.get('date')}")
      @views.push view
    
  render: ->
    @$el.html @template(data: @collection.toJSON())
    @initViews()
    @

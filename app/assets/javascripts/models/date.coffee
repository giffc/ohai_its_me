
window.TimelineDate = Backbone.Model.extend
  initialize: (options) -> 
    return if !options?
    @date = options.date
    if options? && options.accounts? 
      @accounts = []
      _.each options.accounts, (account) =>
        @accounts.push(new DatedAccountPosts(_.extend(account, {date: @date})))


window.TimelineDates = Backbone.Collection.extend
  model: TimelineDate
  url: -> "/posts.json"
  
  initialize: (options) ->

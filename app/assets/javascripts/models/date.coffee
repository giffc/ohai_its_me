
window.Date = Backbone.Model.extend
  initialize: (options) -> 
    return if !options?
    @date = options.date
    if options? && options.accounts? 
      @accounts = []
      _.each options.accounts, (account) =>
        @accounts.push(new DatedAccountPosts(_.extend(account, {date: @date})))


window.Dates = Backbone.Collection.extend
  model: Date
  url: -> "/posts.json"
  
  initialize: (options) ->

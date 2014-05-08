class Facebook
  constructor: (accessToken) ->
    @fb = Meteor.require 'fbgraph'
    @accessToken = accessToken
    @fb.setAccessToken @accessToken
    @options =
      timeout: 3000
      pool:
        maxSockets: Infinity
        headers:
          connection: 'keep-alive'
    @fb.setOptions @options

  query: (query, method) ->
    method = if typeof method is 'undefined'
      'get'
    else
      method
    a = (done) =>
      @fb[method] query, (error, response) ->
        done null, response

    data = Meteor.sync a
    data.result

  getUserData: ->
    @query 'me'

  getFriendsData: ->
    @query '/me/friends'

Meteor.methods
  getUserData: (user) ->
    fb = new Facebook user.services.facebook.accessToken
    data = fb.getUserData()

  updateFriendsList: (user) ->
    fb = new Facebook user.services.facebook.accessToken
    data = fb.getFriendsData()
    ids = _.map data.data, (friend) ->
      Meteor.users.find({"services.facebook.id": friend.id}).fetch()[0]._id
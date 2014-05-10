Accounts.onCreateUser (options, user) ->
  if options.profile
    user.profile = options.profile
    Meteor.call 'getUserProfilePicture', user, (error, result) ->
      user.profile.picture = result.data.url
    user

Accounts.onLogin (data) ->
  Meteor.call 'updateFriendsList', data.user, (error, result) ->
    console.log 'result: ', result
    Meteor.users.update data.user._id, $set: { "profile.friendList": result }
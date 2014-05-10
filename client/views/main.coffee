Deps.autorun ->
  if Meteor.user() || Meteor.loggingIn()
    Meteor.subscribe 'friends'
    for friend in Meteor.users.find(_id: {$ne: Meteor.userId()}).fetch()
      Friends.insert friend
  else
    console.log 'logged out'
    Friends.remove {}
  console.log 'friends: ', Friends.find().fetch()

Template.main.settings =
  position: 'bottom'
  limit: 10
  rules: [{
    collection: Friends
    field: 'profile.name'
    matchAll: true
    template: Template.friends
  }]
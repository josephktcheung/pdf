Accounts.onCreateUser (options, user) ->
  if options.profile
    options.profile.picture = "http://graph.facebook.com/" + user.services.facebook.id + "/picture/?type=large"
    user.profile = options.profile
    user

ServiceConfiguration.configurations.remove
  service: 'facebook'

ServiceConfiguration.configurations.insert
  service: 'facebook'
  appId: Meteor.settings.facebook.appId
  secret: Meteor.settings.facebook.secret
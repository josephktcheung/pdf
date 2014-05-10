Router.configure
  layoutTemplate: 'layout'
  waitOn: () ->
    Meteor.subscribe 'recommendations'
    Meteor.subscribe 'presents'
    Meteor.subscribe 'dinners'
    Meteor.subscribe 'flowers'
    Meteor.subscribe 'friends'
    Meteor.subscribe 'locations'

Router.map ->
  @.route 'main', { path: '/' }
  @.route 'recommendationsList',
    path: '/recommendations'

  # @.route 'recommendationPage',
  #   path: '/recommendations/:_id'
  #   waitOn: ->
  #     Meteor.subscribe("singleRecommendation", @params._id)

  #   data: ->
  #     Recommendations.findOne @params._id

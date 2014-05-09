Router.configure
  layoutTemplate: 'layout'
  waitOn: () ->
    Meteor.subscribe 'presents'
    Meteor.subscribe 'dinners'
    Meteor.subscribe 'flowers'

Router.map ->
  @.route 'main', { path: '/' }
  @.route 'recommendationsList',
    path: '/recommendations'
    waitOn: ->
      Meteor.subscribe 'recommendations'
  @.route 'recommendationPage',
    path: '/recommendations/:_id'
    waitOn: ->
      Meteor.subscribe("singleRecommendation", @params._id)

    data: ->
      Recommendations.findOne @params._id

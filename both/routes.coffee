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

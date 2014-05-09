Router.configure
  layoutTemplate: 'layout'
  waitOn: () ->
    Meteor.subscribe 'presents'
    Meteor.subscribe 'dinners'
    Meteor.subscribe 'flowers'

Router.map ->
  @.route 'main', { path: '/' }
  @.route 'recommendationsList',
    path: '/recommendations/:recommendationsLimit?'
    waitOn: ->
      limit = parseInt(@params.recommendationsLimit) or 1
      Meteor.subscribe 'recommendations',
        limit: limit

    data: ->
      limit = parseInt(@params.recommendationsLimit) or 1
      recommendations: Recommendations.find({},
        limit: limit
      )

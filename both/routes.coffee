Router.configure
  layoutTemplate: 'layout'
  waitOn: () ->
    Meteor.subscribe 'presents'
    Meteor.subscribe 'dinners'
    Meteor.subscribe 'flowers'

RecommendationsListController = RouteController.extend(
  template: "recommendationsList"
  increment: 1
  limit: ->
    parseInt(@params.recommendationsLimit) or @increment

  findOptions: ->
    limit: @limit()

  waitOn: ->
    Meteor.subscribe "recommendations", @findOptions()

  data: ->
    recommendations: Recommendations.find({}, @findOptions())
)

Router.map ->
  @.route 'main', { path: '/' }
  # @.route 'recommendationsList',
  #   path: '/recommendations/:recommendationsLimit?'
  #   controller: RecommendationsListController
  @.route 'recommendationPage',
    path: '/recommendations/:_id'
    waitOn: ->
      Meteor.subscribe("singleRecommendation", @params._id)

    data: ->
      Recommendations.findOne @params._id

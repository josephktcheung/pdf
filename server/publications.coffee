Meteor.publish "recommendations", ->
  Recommendations.find()

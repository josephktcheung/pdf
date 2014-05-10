Meteor.publish "recommendations", (options) ->
  Recommendations.find({}, options)

# Meteor.publish "singleRecommendation", (id) ->
#   id and Recommendations.find(id)

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish "flowers", ->
  Flowers.find()

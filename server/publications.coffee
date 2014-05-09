Meteor.publish "recommendations", (options) ->
  Recommendations.find({}, options)

Meteor.publish "presents", ->
  Presents.find()

Meteor.publish "dinners", ->
  Dinners.find()

Meteor.publish "flowers", ->
  Flowers.find()

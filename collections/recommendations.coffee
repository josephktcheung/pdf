@Recommendations = new Meteor.Collection("recommendations")

Recommendations.allow
  update: (userId, doc, fields, modifier) ->
    true

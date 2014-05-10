@Recommendations = new Meteor.Collection("recommendations")

@Pages = new Meteor.Pagination Recommendations,
  perPage: 1

Recommendations.allow
  update: (userId, doc, fields, modifier) ->
    true

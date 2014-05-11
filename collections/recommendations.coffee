@Recommendations = new Meteor.Collection("recommendations")

Recommendations.allow
  update: (userId, doc, fields, modifier) ->
    true

@Pages = new Meteor.Pagination Recommendations,
  perPage: 1


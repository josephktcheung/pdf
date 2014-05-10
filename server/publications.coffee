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

Meteor.publish "friends", ->
  if @userId
    friendList = Meteor.users.findOne(@userId).profile.friendList
    if friendList
      friendsCursor = Meteor.users.find({_id: {$in: friendList}}, {fields: {services: 0}})

Meteor.publish "locations", ->
  Locations.find()

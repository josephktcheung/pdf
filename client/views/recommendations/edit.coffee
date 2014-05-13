translateLocationId = (locationId) ->
  locations = Locations.find().fetch()
  location = (_.findWhere locations, {_id: locationId}).name

findRecommendation = (recommendationId, location) ->
  dinner = Dinners.findOne {location: location}
  flower = Flowers.findOne {location: location}
  present = Presents.findOne {location: location}

  Recommendations.update _id: recommendationId, {$set: { dinnerId: dinner._id, flowerId: flower._id, presentId: present._id }}

Template.editRecommendation.rendered = ->
  targetUser = Session.get 'targetUser'
  if targetUser
    recommendations = Recommendations.find().fetch()
    recommendation = _.findWhere recommendations, {targetId: targetUser}
    Session.set 'currentIndex', recommendations.indexOf recommendation
  else
    Session.set 'currentIndex', 0
    Session.set 'targetUser', Recommendations.findOne().targetId

Template.editRecommendation.helpers

  targetUser: ->
    targetUser = Session.get 'targetUser'
    Meteor.users.findOne(targetUser)

  locations: ->
    Locations.find()

  showPrevNext: ->
    if Recommendations.find().count() < 2
      false
    else
      true

  dinner: ->
    recommendation = Recommendations.findOne {targetId: Session.get 'targetUser'}
    if recommendation
      if recommendation.dinnerId
        dinner = Dinners.findOne(recommendation.dinnerId).title
      else
        'No dinner'

  flower: ->
    recommendation = Recommendations.findOne {targetId: Session.get 'targetUser'}
    if recommendation
      if recommendation.flowerId
        flower = Flowers.findOne(recommendation.flowerId).title
      else
        'No flower'

  present: ->
    recommendation = Recommendations.findOne {targetId: Session.get 'targetUser'}
    if recommendation
      if recommendation.presentId
        present = Presents.findOne(recommendation.presentId).title
      else
        'No present'

Template.location.helpers
  selected: ->
    currentRecommendation = Recommendations.findOne {targetId: Session.get 'targetUser'}
    if currentRecommendation
      if currentRecommendation.locationId && currentRecommendation.locationId == @_id
        'selected'

Template.editRecommendation.events
  'click #prev': (e) ->
    currentIndex = Session.get 'currentIndex'
    recommendationsLength = Recommendations.find().count()
    if currentIndex == 0
      Session.set 'currentIndex', recommendationsLength - 1
    else
      Session.set 'currentIndex', currentIndex - 1
    Session.set 'targetUser', Recommendations.find().fetch()[Session.get 'currentIndex'].targetId

  'click #next': (e) ->
    currentIndex = Session.get 'currentIndex'
    recommendationsLength = Recommendations.find().count()
    if currentIndex == recommendationsLength - 1
      Session.set 'currentIndex', 0
    else
      Session.set 'currentIndex', currentIndex + 1
    Session.set 'targetUser', Recommendations.find().fetch()[Session.get 'currentIndex'].targetId

  'change #location': (e) ->
    recommendationId = Recommendations.findOne({targetId: Session.get 'targetUser'})._id
    Recommendations.update _id: recommendationId, {$set: {locationId: $(e.target).val()}}, (error, result) ->
      if error
        console.log 'error: ', error

    locationId = Recommendations.findOne({targetId: Session.get 'targetUser'}).locationId
    location = translateLocationId locationId

    findRecommendation recommendationId, location


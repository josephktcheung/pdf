currentRecommendation = ->
  targetUser = Session.get 'targetUser'
  Recommendations.findOne targetId: targetUser

randomRecommendation = (collection, locationId) ->
  if !!locationId
    index = _.random 0, collection.find(location: locationId).count() - 1
    collection.find(location: locationId).fetch()[index]
  else
    index = _.random 0, collection.find().count() - 1
    collection.find().fetch()[index]

generateRecommendation = (recommendationId, locationId) ->
  dinner = randomRecommendation Dinners, locationId
  anything = randomRecommendation Anythings, locationId
  present = randomRecommendation Presents, locationId

  Recommendations.update _id: recommendationId, {$set: { dinnerId: dinner._id, anythingId: anything._id, presentId: present._id }}

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

  recommendations: ->
    Recommendations.find()

  chosenPresent: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.presentId
        Presents.findOne recommendation.presentId
    else
      Presents.findOne()


  chosenDinner: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.dinnerId
        Dinners.findOne recommendation.dinnerId
    else
      Dinners.findOne()

  chosenAnything: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.anythingId
        Anythings.findOne recommendation.anythingId
    else
      Anythings.findOne()

  allPresents: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId
        Presents.find location: recommendation.locationId
      else
        Presents.find()

  allDinners: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId
        Dinners.find location: recommendation.locationId
      else
        Dinners.find()

  allAnythings: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId
        Anythings.find location: recommendation.locationId
      else
        Anythings.find()

  showPrevNext: ->
    if Recommendations.find().count() < 2
      false
    else
      true

Template.location.helpers
  selected: ->
    recommendation = currentRecommendation()
    if recommendation
      if recommendation.locationId && recommendation.locationId == @_id
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

  'click .recommendation-item': (e) ->
    e.preventDefault()
    unless $(e.target).context.nodeName == 'BUTTON' or $(e.target).context.parentNode.nodeName == 'BUTTON'
      $("##{@_id}").modal 'show'

  'click #next': (e) ->
    currentIndex = Session.get 'currentIndex'
    recommendationsLength = Recommendations.find().count()
    if currentIndex == recommendationsLength - 1
      Session.set 'currentIndex', 0
    else
      Session.set 'currentIndex', currentIndex + 1
    Session.set 'targetUser', Recommendations.find().fetch()[Session.get 'currentIndex'].targetId

  'change #location': (e) ->
    recommendationId = currentRecommendation()._id
    Recommendations.update _id: recommendationId, {$set: {locationId: $(e.target).val()}}, (error, result) ->
      if error
        console.log 'error: ', error

    locationId = Recommendations.findOne({targetId: Session.get 'targetUser'}).locationId

    generateRecommendation recommendationId, locationId
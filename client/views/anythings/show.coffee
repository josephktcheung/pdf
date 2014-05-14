Template.anythingModal.helpers
  location: ->
    Locations.findOne(@location).name

Template.showAnything.events
  'click .add-anything': (e) ->
    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}
    Recommendations.update currentRecommendation._id, {$set: {"anythingId": @_id}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)
      else
        $("#alert-anything").modal 'show'
        Meteor.setTimeout ->
          $("#alert-anything").modal 'hide'
        , 1000

Template.anythingModal.events
  'click .add-anything-modal': (e) ->
    console.log 'e.target', $(e.target)
    anythingId = @_id
    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}
    Recommendations.update currentRecommendation._id, {$set: {"anythingId": @_id}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)
      else
        $("##{anythingId}").modal 'hide'
        $("#alert-anything").modal 'show'
        Meteor.setTimeout ->
          $("#alert-anything").modal 'hide'
        , 1000
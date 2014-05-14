Template.showPresent.helpers
  location: ->
    Locations.findOne(@location).name

Template.showPresent.events

  'click .add-present': (e) ->
    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}
    Recommendations.update currentRecommendation._id, {$set: {"presentId": @_id}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)
      else
        $("#alert-present").modal 'show'
        Meteor.setTimeout ->
          $("#alert-present").modal 'hide'
        , 1000

  'click .add-present-modal': (e) ->
    console.log 'e.target', $(e.target)
    presentId = @_id
    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}
    Recommendations.update currentRecommendation._id, {$set: {"presentId": @_id}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)
      else
        $("##{presentId}").modal 'hide'
        $("#alert-present").modal 'show'
        Meteor.setTimeout ->
          $("#alert-present").modal 'hide'
        , 1000
Template.present.events
  'click .presentList': (e) ->
    e.preventDefault()

    Presents.find().fetch()[0]
    presentId= @_id

    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}

    Recommendations.update currentRecommendation._id, {$set: {"presentId": presentId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Present updated!'



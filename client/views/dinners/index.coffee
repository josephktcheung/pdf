Template.dinner.events
  'click .dinnerList': (e) ->
    e.preventDefault()

    Dinners.find().fetch()[0]
    dinnerId= @_id

    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}

    Recommendations.update currentRecommendation._id, {$set: {"dinnerId": dinnerId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Dinner updated!'
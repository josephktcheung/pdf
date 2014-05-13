Template.flower.events
  'click .flowerList': (e) ->
    e.preventDefault()

    Flowers.find().fetch()[0]
    flowerId= @_id

    recommendationId = Session.get('targetUser')
    currentRecommendation = Recommendations.findOne {targetId: recommendationId}

    Recommendations.update currentRecommendation._id, {$set: {"flowerId": flowerId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Flower updated!'

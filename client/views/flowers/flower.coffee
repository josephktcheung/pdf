Template.flower.events
  'click .flowerList': (e) ->
    e.preventDefault()

    Flowers.find().fetch()[0]
    flowerId= @_id

    recommendationId = Recommendations.find().fetch()[0]

    Recommendations.update {_id: recommendationId._id}, {$set: {"flowerId": flowerId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Flower updated!'

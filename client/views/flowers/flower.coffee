Template.flower.events
  'click .flowerList': (e) ->
    e.preventDefault()

    Flowers.find().fetch()[0]
    flowerId= @_id

    n = Pages.currentPage()
    recommendationId = Pages.PaginatedCollection.find().fetch()[n - 1]

    Recommendations.update {_id: recommendationId._id}, {$set: {"flowerId": flowerId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Flower updated!'

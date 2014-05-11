Template.dinner.events
  'click .dinnerList': (e) ->
    e.preventDefault()

    Dinners.find().fetch()[0]
    dinnerId= @_id

    n = Pages.currentPage()
    recommendationId = Pages.PaginatedCollection.find().fetch()[n - 1]

    Recommendations.update {_id: recommendationId._id}, {$set: {"dinnerId": dinnerId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Dinner updated!'
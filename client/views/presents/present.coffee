Template.present.events
  'click .presentList': (e) ->
    e.preventDefault()

    Presents.find().fetch()[0]
    presentId= @_id

    recommendationId = Recommendations.find().fetch()[0]

    Recommendations.update {_id: recommendationId._id}, {$set: {"presentId": presentId}}, (error) ->
      if error
        console.log 'Error!'
        alert(error.reason)

      else
        alert 'Present updated!'



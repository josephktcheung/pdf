Template.recommendationsList.helpers

  recommendations: ->
    Recommendations.find()

  presents: ->
    Presents.find recommendationId: @_id

  dinners: ->
    Dinners.find recommendationId: @_id

  flowers: ->
    Flowers.find recommendationId: @_id

  allPresents: ->
    Presents.find()

  allDinners: ->
    Dinners.find()

  allFlowers: ->
    Flowers.find()



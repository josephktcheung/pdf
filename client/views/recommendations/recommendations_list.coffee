Template.recommendationsList.helpers

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

Template._pagesItemDefault.helpers

  present: ->
    Presents.find(@presentId).fetch()[0]
  dinner: ->
    Dinners.find(@dinnerId).fetch()[0]
  flower: ->
    Flowers.find(@flowerId).fetch()[0]




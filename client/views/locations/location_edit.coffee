fillOptions = (name) ->
  $('#selectLocation').append '<option>' + name + '</option>'

Template.locationEdit.created = () ->
  Meteor.call 'getOptions', (error, result) ->
    locationsData = JSON.parse result
    locations = locationsData.locations
    for location in locations
      fillOptions location.name


Template.locationEdit.events
  'submit form': (e) ->
    e.preventDefault()

    locationProperty = $(e.target).find('[name=location]').val()

    Meteor.users.update {_id: Meteor.userId()}, {$set: {"profile.location": locationProperty}}, (error) ->
      if error
        console.log 'Error!'

      else
        alert 'Update Successful!'
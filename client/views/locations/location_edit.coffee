Template.locationEdit.helpers
  locations: () ->
    console.log 'locations: ', Locations.find()
    Locations.find()

Template.locationEdit.events
  'submit form': (e) ->
    e.preventDefault()

    locationProperty = $(e.target).find('[name=location]').val()

    Meteor.users.update {_id: Meteor.userId()}, {$set: {"profile.location": locationProperty}}, (error) ->
      if error
        console.log 'Error!'

      else
        alert 'Update Successful!'
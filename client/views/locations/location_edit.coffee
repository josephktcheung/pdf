Template.locationEdit.events
  'submit form': (e) ->
    e.preventDefault()

    locationProperty = {
      location: $(e.target).find('[name=location]').val()
    }

    currentUser = Meteor.userId()

    # Meteor.users.update {"_id": currentUser}, {$set: locationProperty}, (error) ->
    #   if error
    #     Errors.throw error.reason

    #   else
    #     Router.go '/'
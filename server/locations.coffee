Meteor.methods
  getOptions: () ->
    Assets.getText 'locations.json'
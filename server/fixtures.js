if (Recommendations.find().count() === 0) {
  var julId = Meteor.users.insert({
    profile: { name: 'Julie'}
  });

  var jul = Meteor.users.findOne(julId);

  var josId = Meteor.users.insert({
    profile: { name: 'Joseph'}
  });

  var jos = Meteor.users.findOne(josId);

  var marId = Meteor.users.insert({
    profile: { name: 'Marco'}
  });

  var mar = Meteor.users.findOne(marId);

  var centralId = Locations.insert({
    name: 'Central'
  });

  var admiraltyId = Locations.insert({
    name: 'Admiralty'
  });

  var julcenId = Contacts.insert({
    userId: jul._id,
    locationId: centralId,
    name: 'JulieCentral'
  });

  var julconId2 = Contacts.insert({
    userId: jul._id,
    locationId: admiraltyId,
    name: 'JulieAdmiralty'
  });

  Recommendations.insert({
    userId: jul._id,
    contactId: julconId,
    locationId: centralId,
    presentId: wineId,
    dinnerId: delaneyId,
    flowerId: roseId
  });

  Recommendations.insert({
    userId: jul._id,
    contactId: julconId2,
    locationId: admiraltyId,
    presentId: chocoId,
    dinnerId: pizzaId,
    flowerId: bouId
  });

  var wineId = Presents.insert({
    locationId: centralId,
    title: 'Wine',
    description: 'Cabernet Sauvignon',
    price: 'HKD 400'
  });

  var chocoId = Presents.insert({
    locationId: admiraltyId,
    title: 'Chocolate',
    description: 'Aguis Chocolate',
    price: 'HKD 400'
  });

  var delaneyId = Dinners.insert({
    locationId: centralId,
    title: 'Delaney Restaurant',
    description: 'Romantic dinner',
    price: 'HKD 600'
  });

  var pizzaId = Dinners.insert({
    locationId: admiraltyId,
    title: 'Paisano Pizza',
    description: 'Huge pizza',
    price: 'HKD 200'
  });

  var roseId = Flowers.insert({
    locationId: centralId,
    title: 'Rose',
    description: 'Red color',
    price: 'HKD 300'
  });

  var bouId = Flowers.insert({
    locationId: admiraltyId,
    title: 'Bouvardia',
    description: 'Smell like sweet perfume',
    price: 'HKD 700'
  });
}
if Recommendations.find().count() == 0

  julId = Meteor.users.insert
    profile: { name: 'Julie'}

  jul = Meteor.users.findOne(julId);

  josId = Meteor.users.insert
    profile: { name: 'Joseph'}

  jos = Meteor.users.findOne(josId);

  marId = Meteor.users.insert({
    profile: { name: 'Marco'}

  mar = Meteor.users.findOne(marId);

  centralId = Locations.insert
    name: 'Central'

  admiraltyId = Locations.insert
    name: 'Admiralty'

  julcenId = Contacts.insert
    userId: jul._id
    locationId: centralId
    name: 'JulieCentral'

  julconId2 = Contacts.insert
    userId: jul._id
    locationId: admiraltyId
    name: 'JulieAdmiralty'

  Recommendations.insert
    userId: jul._id
    contactId: julconId
    locationId: centralId
    presentId: wineId
    dinnerId: delaneyId
    flowerId: roseId

  Recommendations.insert
    userId: jul._id
    contactId: julconId2
    locationId: admiraltyId
    presentId: chocoId
    dinnerId: pizzaId
    flowerId: bouId

  wineId = Presents.insert
    locationId: centralId
    title: 'Wine'
    description: 'Cabernet Sauvignon'
    price: 'HKD 400'

  chocoId = Presents.insert
    locationId: admiraltyId
    title: 'Chocolate'
    description: 'Aguis Chocolate'
    price: 'HKD 400'

  delaneyId = Dinners.insert
    locationId: centralId
    title: 'Delaney Restaurant'
    description: 'Romantic dinner'
    price: 'HKD 600'

  pizzaId = Dinners.insert
    locationId: admiraltyId
    title: 'Paisano Pizza'
    description: 'Huge pizza'
    price: 'HKD 200'

  roseId = Flowers.insert
    locationId: centralId
    title: 'Rose'
    description: 'Red color'
    price: 'HKD 300'

  bouId = Flowers.insert
    locationId: admiraltyId
    title: 'Bouvardia'
    description: 'Smell like sweet perfume'
    price: 'HKD 700'

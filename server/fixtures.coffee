if Locations.find().count() is 0
  centralId = Locations.insert
    "name": "Central",
    "area": "Hong Kong Island"
  midLevelId = Locations.insert
    "name": "Mid-level",
    "area": "Hong Kong Island"
  thePeakId = Locations.insert
    "name": "The Peak",
    "area": "Hong Kong Island"
  saiWanId = Locations.insert
    "name": "Sai Wan",
    "area": "Hong Kong Island"
  sheungWanId = Locations.insert
    "name": "Sheung Wan",
    "area": "Hong Kong Island"
  causewayBayId = Locations.insert
    "name": "Causeway Bay",
    "area": "Hong Kong Island"
  chaiWanId = Locations.insert
    "name": "Chai Wan",
    "area": "Hong Kong Island"
  northPointId = Locations.insert
    "name": "North Point",
    "area": "Hong Kong Island"
  quarryBayId = Locations.insert
    "name": "Quarry Bay",
    "area": "Hong Kong Island"
  saiWanHoId = Locations.insert
    "name": "Sai Wan Ho",
    "area": "Hong Kong Island"
  shauKeiWanId = Locations.insert
    "name": "Shau Kei Wan",
    "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Siu Sai Wan",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Aberdeen",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Ap Lei Chau",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Chung Hom Kok",
  #   "area": "Hong Kong Island"
  cyberportId = Locations.insert
    "name": "Cyberport",
    "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Chung Hom Kok",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Deep Water Bay",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Pok Fu Lam",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Repulse Bay",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Stanley",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Shek O",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Tai Tam",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Wong Chuk Hang",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Wan Chai",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Happy Valley",
  #   "area": "Hong Kong Island"
  # Locations.insert
  #   "name": "Tai Hang",
  #   "area": "Hong Kong Island"

if Presents.find().count() is 0

  presents =
    wine:
      title: 'Wine'
      description: 'Cabernet Sauvignon'
      price: 'HKD 400'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/wine1.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/winelogo.jpg'

    strawberries:
      title: 'Strawberries'
      description: 'A box of strawberries'
      price: 'HKD 100'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/strawberries.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/winelogo.jpg'

    chocolate:
      title: 'Chocolate'
      description: 'Aguis Chocolate'
      price: 'HKD 400'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/choco2.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

    strawberrySuits:
      title: 'Strawberry Suits'
      description: 'Strawberries like a sir!'
      price: 'HKD 600'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present5.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

    basketOfFruit:
      title: 'Basket of Fruit'
      description: 'Sheung Wan tossed'
      price: 'HKD 100'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present6.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

    pinkZaku:
      title: 'Pink Zaku'
      description: 'Perfect for mecha girls'
      price: 'HKD 400'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present7.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/winelogo.jpg'

    ring:
      title: 'Ring'
      description: 'Ring Mabelle'
      price: 'HKD 1400'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring3.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring+logo.jpg'

    appleGiftCards:
      title: 'Apple Gift Cards'
      description: 'For Apple Products'
      price: 'HKD 1400'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present008.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring+logo.jpg'

    windowsGiftCards:
      title: 'Windows Gift Cards'
      description: 'For the love of blue screeens'
      price: 'HKD 500'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present009.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/chocologo.png'

    disneylandTickets:
      title: 'Disneyland Tickets'
      description: 'To the happiest place on Earth'
      price: 'HKD 1400'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present010.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring+logo.jpg'

    oceanParkTickets:
      title: 'Ocean Park Tickets'
      description: 'To the wettest place on Earth'
      price: 'HKD 1300'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present011.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring+logo.jpg'

    lvBag:
      title: 'LV Bag'
      description: 'Prestigious Bag'
      price: 'HKD 16300'
      vendor: 'Vendor'
      phonenumber: '1278 7897'
      image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/present012.jpg'
      vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/ring+logo.jpg'

  Presents.insert _.extend presents.wine,               location: centralId
  Presents.insert _.extend presents.strawberries,       location: centralId
  Presents.insert _.extend presents.chocolate,          location: thePeakId
  Presents.insert _.extend presents.strawberrySuits,    location: thePeakId
  Presents.insert _.extend presents.basketOfFruit,      location: midLevelId
  Presents.insert _.extend presents.pinkZaku,           location: midLevelId
  Presents.insert _.extend presents.ring,               location: saiWanId
  Presents.insert _.extend presents.appleGiftCards,     location: saiWanId
  Presents.insert _.extend presents.windowsGiftCards,   location: causewayBayId
  Presents.insert _.extend presents.disneylandTickets,  location: causewayBayId
  Presents.insert _.extend presents.oceanParkTickets,   location: cyberportId
  Presents.insert _.extend presents.lvBag,              location: cyberportId
  Presents.insert _.extend presents.wine,               location: chaiWanId
  Presents.insert _.extend presents.strawberrySuits,    location: chaiWanId
  Presents.insert _.extend presents.basketOfFruit,      location: northPointId
  Presents.insert _.extend presents.pinkZaku,           location: northPointId
  Presents.insert _.extend presents.ring,               location: quarryBayId
  Presents.insert _.extend presents.appleGiftCards,     location: quarryBayId
  Presents.insert _.extend presents.windowsGiftCards,   location: saiWanHoId
  Presents.insert _.extend presents.disneylandTickets,  location: saiWanHoId
  Presents.insert _.extend presents.oceanParkTickets,   location: shauKeiWanId
  Presents.insert _.extend presents.lvBag,              location: shauKeiWanId
  Presents.insert _.extend presents.disneylandTickets,  location: sheungWanId
  Presents.insert _.extend presents.oceanParkTickets,   location: sheungWanId
if Dinners.find().count() is 0

  Dinners.insert
    location: centralId
    title: 'Delaney Restaurant'
    description: 'Romantic dinner'
    price: 'HKD 600'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1+logo.png'

  Dinners.insert
    location: thePeakId
    title: 'Eat at the Top'
    description: 'Get high for dinner'
    price: 'HKD 1100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant4.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1+logo.png'

  Dinners.insert
    location: midLevelId
    title: 'Paisano Pizza'
    description: 'Huge pizza'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner2.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner2+logo.png'

  Dinners.insert
    location: saiWanId
    title: 'Victor Lin Poultry'
    description: 'You will find no chicken unbitten here'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant5.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner2+logo.png'

  Dinners.insert
    location: sheungWanId
    title: 'K-Roll'
    description: 'Korean burritos'
    price: 'HKD 100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant6.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: causewayBayId
    title: 'Shelter'
    description: 'Skybar for two'
    price: 'HKD 1200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/restaurant7.JPG'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: cyberportId
    title: 'The Globe'
    description: 'Romantic Bar for two'
    price: 'HKD 1200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: chaiWanId
    title: 'Wooden Dinner'
    description: 'Dinner in a forest'
    price: 'HKD 1300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner8.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: northPointId
    title: 'Timber Dinner'
    description: 'Timber beavers'
    price: 'HKD 800'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner9.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: quarryBayId
    title: 'The View'
    description: 'View Eating for two'
    price: 'HKD 1250'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner010.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner3+logo.png'

  Dinners.insert
    location: saiWanHoId
    title: 'Fancy Restaurant'
    description: 'Restaurant for madames'
    price: 'HKD 2100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner011.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1+logo.png'

  Dinners.insert
    location: shauKeiWanId
    title: 'English Restaurant'
    description: 'Restaurant for madames'
    price: 'HKD 3100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner012.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/dinner1+logo.png'

if Anythings.find().count() is 0

  Anythings.insert
    location: centralId
    title: 'Rose'
    description: 'Red color'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Anythings.insert
    location: thePeakId
    title: 'Mountain Flower'
    description: 'Consume the essence of eternal beauty'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower4.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Anythings.insert
    location: midLevelId
    title: 'Bouvardia'
    description: 'Smell like sweet perfume'
    price: 'HKD 700'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower2.jpeg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower2+logo.png'

  Anythings.insert
    location: saiWanId
    title: 'Vetter Flowers'
    description: 'One whiff to desire less'
    price: 'HKD 700'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower5.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower2+logo.png'

  Anythings.insert
    location: sheungWanId
    title: 'Flower Crown'
    description: 'Your majesty'
    price: 'HKD 600'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower6.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3+logo.png'

  Anythings.insert
    location: causewayBayId
    title: 'Flower Panda'
    description: 'The best of both worlds'
    price: 'HKD 300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower7.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Anythings.insert
    location: cyberportId
    title: 'Lavendar'
    description: 'Twilight mixed flower'
    price: 'HKD 500'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3+logo.png'

  Anythings.insert
    location: chaiWanId
    title: 'Lipstick'
    description: 'Luscious Red'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/anything008.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3+logo.png'

  Anythings.insert
    location: northPointId
    title: 'Pink Heels'
    description: 'So cute! Waaa~'
    price: 'HKD 200'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/anything009.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower3+logo.png'

  Anythings.insert
    location: quarryBayId
    title: 'Pink Ribbon'
    description: 'For little girls'
    price: 'HKD 100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/anything010.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Anythings.insert
    location: saiWanHoId
    title: 'Macbook Pro'
    description: 'Code.'
    price: 'HKD 9300'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/anything011.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

  Anythings.insert
    location: shauKeiWanId
    title: 'Running Shoes'
    description: 'Good Luck Girl'
    price: 'HKD 1100'
    vendor: 'Vendor'
    phonenumber: '1278 7897'
    image: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/anything012.jpg'
    vendorimage: 'https://s3-ap-southeast-1.amazonaws.com/pdf-giftimage/flower1+logo.png'

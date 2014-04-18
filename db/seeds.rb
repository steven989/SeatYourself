# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Dummyrestaurant.create!(
#     name: "Canoe Restaurant and Bar",
#     description: "Critically acclaimed to be among Canada’s best restaurants, Canoe's unique location high atop the TD Bank Tower affords a breathtaking view of the city and Lake Ontario. The design, originally conceptualized by noted designers Yabu Pushelberg and most recently refreshed by Anacleto Design, is clean and simple, yet absolutely stylish - a brilliant reflection of Canada's rich raw environment. That same brilliance is captured through the flavours and textures of Chef John Horne's inspired regional Canadian cuisine. The menu showcases the freshest and finest Canadian fish, game and produce, as well as an outstanding selection of Canadian vintages. ""All that is Canadian defines Canoe."" Florence Fabricant, The New York Times",
#     display_image_url: "canoe.jpg",
#     location: "Financial District",
#     cuisine: "European",
#     address: "66 Wellington Street West, 54th Floor TD Bank Tower, Toronto, ON M5K 1H6"
# )

# Dummyrestaurant.create!(
#     name: "Hy's Steak House",
#     description: "Hy's Toronto has everything you could expect from a classic steakhouse in an elegant, upscale atmosphere. At the entrance, the sleek and elegant lounge lures with the promise of perfectly chilled martinis. And each unique dining area is more beautiful than the last, from the front room, centred by the famous steak grill, through the open and light-filled atrium to the intimate mezzanine with cozy fireplace and mahogany wine cabinets. Our white coated servers will guide you with professionalism and good humor, and our award winning wine list will tempt you with well chosen labels from around the world. Sink into a plush banquette, enjoy our famous cheese toast and a caesar salad, prepared in the dining room, then savor one of the classic cuts of Canadian Prime beef...and you'll remember why Hy's has been a Canadian favorite for over fifty years.",
#     display_image_url: "hy.jpg",
#     location: "Financial District",
#     cuisine: "Casual Elegant",
#     address: "101-120 Adelaide Street W., Toronto, ON M5H 1T1"
# )

# Dummyrestaurant.create!(
#     name: "360 The Restaurant",
#     description: "360 The Restaurant at the CN Tower, one of Toronto's finest, features unforgettable food combined with a magnificent revolving view of Toronto more than 351 metres (1,151 ft) below. 360 offers market-fresh cuisine, featuring regional ingredients to ensure an incomparable culinary experience. Please note that elevation to 360 Restaurant and access to the LookOut and Glass Floor levels of the CN Tower, following your meal, are complimentary with the purchase of a main course by each guest.",
#     display_image_url: "360cn.jpg",
#     location: "Entertainment District",
#     cuisine: "Continental",
#     address: "301 Front St West, Toronto, ON M5V 2T6"
# )


# Dummyrestaurant.create!(
#     name: "Blu Ristorante",
#     description: "On the quiet eastern front of Yorkville, set back behind a brick façade, Blu is an Italian restaurant based on authentic classic cuisine, yet, contemporary created by executive Chef; Massimo Callovini and Chef de Cuisine; Eric Bucher Warmly lit stone walls and grand mirrors surround cozy leather seating and dark wood tables. Enter through a casual wine bar, which then leads to a hip, upscale dining room with an inviting ambiance. Dinner is enhanced by the soothing live music Friday to Saturday. Pianist/singer, guitarrist/singer. Enjoy impeccable service for intimate dining or for large private parties up to 110 guests. Private rooms also available. One will remember Blu as a true memorable dining experience.",
#     display_image_url: "blu.jpg",
#     location: "Yorkville",
#     cuisine: "European",
#     address: "17A Yorkville Avenue, Toronto, ON M4W 1L1"
# )

# Dummyrestaurant.create!(
#     name: "Monk Kitchen",
#     description: "The Templar Hotel, ""Toronto's Secret Hotel"", opened in 2012 to widespread acclaim, receiving many notable awards including “One of the 10 Best Design Hotels in the World” by London newspaper, The Guardian and runner-up in the “Best New Hotels” by Wallpaper Magazine. Like all kitchens, Monk Kitchen is the heart of our home. Whether guests choose to dine at the chef’s table while engaging directly with our chefs, the culinary creations prepared by Monk Kitchen can be enjoyed anywhere in the hotel, including the dining room, Monk Lounge, the lobby, or our sidewalk table.",
#     display_image_url: "monk.jpg",
#     location: "Financial District",
#     cuisine: "International",
#     address: "348 Adelaide St West, Toronto, ON M5V 1R7"
# )


Restaurant.create!({
  name: "The Keg",
  capacity: 150
})
Restaurant.create!({
  name: "Red Lobster",
  capacity: 50
  })

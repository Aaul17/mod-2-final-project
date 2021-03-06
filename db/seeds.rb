# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Image.destroy_all
User.destroy_all
Interest.destroy_all
UserInterest.destroy_all

puts "creating bird images"

Image.create(name: "https://i.imgur.com/ZBMWt4h.jpg")
Image.create(name: "https://i.imgur.com/wJ5Z1EA.jpg")
Image.create(name: "https://i.imgur.com/PfC1IWR.jpg")
Image.create(name: "https://i.imgur.com/3NmM0mo.jpg")
Image.create(name: "https://i.imgur.com/S7lbCym.jpg")
Image.create(name: "https://i.imgur.com/ceuxeOx.jpg")
Image.create(name: "https://i.imgur.com/qRz62fZ.jpg")
Image.create(name: "https://i.imgur.com/SAzSZny.jpg")
puts "bird images created"

puts "creating users"
User.create(name: "Anthony Schwartz", username: "SkyRat", age: 3, gender: "male", occupation: "Marketing Associate at Joe's Car Wash", bio: "I love long walks on the beach and a fine Chianti. I play it fast and loose. I'm not your average central park pigeon. Looking for a doll that can ruffle my feathers and doesn't mind a little fowl play now and then.", email: "skyrat@hotmail.com", password: "bird", image_id: 2)
User.create(name: "Richard Francis", username: "DirtyBird", age: 2, gender: "male", occupation: "Sanitation Worker", bio: "Making the city clean one cracker at a time.", email: "lovebird@aol.com", password: "bird", image_id: 5)
User.create(name: "Sylvia Fields", username: "HotBirdToTrot", age: 6, gender: "female", occupation: "Zoo Showbird", bio: "I am the textbook ideal of a pigeon. If you're not ready to treat me like a queen, don't talk to me. I eat ciabatta crumbs only.", email: "materialgurl@gmail.com", password: "bird", image_id: 6)
puts "users created!"


Interest.create(name: "Basketweaving")
Interest.create(name: "Deep-sea Diving")
Interest.create(name: "Hardcore Headbobbing")
Interest.create(name: "Cave Spelunking")
Interest.create(name: "Skydiving")
Interest.create(name: "Reading Tabloids")
Interest.create(name: "Crumb Tasting")
Interest.create(name: "Avoiding Death")
Interest.create(name: "People Watching")
Interest.create(name: "Birdbath Bathing")

UserInterest.create(user_id: 1, interest_id: 3)
UserInterest.create(user_id: 1, interest_id: 8)
UserInterest.create(user_id: 1, interest_id: 5)
UserInterest.create(user_id: 2, interest_id: 1)
UserInterest.create(user_id: 2, interest_id: 10)
UserInterest.create(user_id: 2, interest_id: 9)
UserInterest.create(user_id: 3, interest_id: 10)
UserInterest.create(user_id: 3, interest_id: 6)
UserInterest.create(user_id: 3, interest_id: 3)
UserInterest.create(user_id: 3, interest_id: 2)

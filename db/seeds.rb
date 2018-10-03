# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Interest.destroy_all
UserInterest.destroy_all

User.create(name: "Anthony Schwartz", username: "SkyRat", age: 3, gender: "male", occupation: "Marketing Associate at Joe's Car Wash", bio: "I love long walks on the beach and a fine Chianti. I play it fast and loose. I'm not your average central park pigeon. Looking for a doll that can ruffle my feathers and doesn't mind a little fowl play now and then.", email: "skyrat@hotmail.com")
User.create(name: "Richard Francis", username: "DirtyBird", age: 2, gender: "male", occupation: "Sanitation Worker", bio: "Making the city clean one cracker at a time.", email: "lovebird@aol.com")
User.create(name: "Sylvia Fields", username: "HotBirdToTrot", age: 6, gender: "female", occupation: "Zoo Showbird", bio: "I am the textbook ideal of a pigeon. If you're not ready to treat me like a queen, don't talk to me. I eat ciabatta crumbs only.", email: "materialgurl@gmail.com")

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

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Delete all existing data
Event.destroy_all
User.destroy_all
Attendee.destroy_all

Event.create(id: 1, title: 'Javascript and the browser', max_tix: 50, date_time: Time.new(2015,05,22,9,0,0, "+10:00"), description: "Learn the 1 special trick that Front End Developers don't want you to know!")
Event.create(id: 2, title: 'The Back end', max_tix: 50, date_time: Time.new(2015,05,22,9,30,0, "+10:00"), description: "The dark side of programming is a scary place... ")


User.create(id: 1, name: 'Matt Cameron', email: 'mattlbcameron@gmail.com', password: 'password', role: 'user')
User.create(id: 2, name: 'Dom White', email: 'domwhite@gmail.com', password: 'password', role: 'user')
User.create(id: 3, name: 'Mike Goodwin', email: 'mike@gmail.com', password: 'password', role: 'speaker', bio: "Mike is reknowned for his knowledge of Javascript, the browser, and kittens")
User.create(id: 4, name: 'Matt Swann', email: 'mike@gmail.com', password: 'password', role: 'speaker', bio: "Matt is a developer in residence at General Assembly")


Attendee.create(user_id: 1, event_id: 1)
Attendee.create(user_id: 2, event_id: 1)
Attendee.create(user_id: 3, event_id: 1)
Attendee.create(user_id: 4, event_id: 2)
Attendee.create(user_id: 2, event_id: 2)


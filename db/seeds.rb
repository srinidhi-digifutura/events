# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:"pradeep@keepworks.com",password:"password",name:"Pradeep",gender:"M")
User.create(email:"nishit@keepworks.com",password:"password",name:"Nishit",gender:"M")
User.create(email:"shradha@keepworks.com",password:"password",name:"Shradha",gender:"F")
first_user = User.first
user = User.second
last_user = User.last
last_user.events.create(title:"J S Channel",venue:"Auditorium",address:"Street 123",
	description:"Javascript founders are the guests",city:"Bengaluru",state:"Karnataka",
	event_date:Time.zone.now+1.week,ticket_fee:500)
user.events.create(title:"J S 1",venue:"Auditorium",address:"Street 233",
	description:"Ruby founders are the guests",city:"Bengaluru",state:"Karnataka",
	event_date:Time.zone.now+1.day,ticket_fee:600)
first_user.events.create(title:"J 2",venue:"Auditorium",address:"Street 893",
	description:"Rails founders are the guests",city:"Bengaluru",state:"Karnataka",
	event_date:Time.zone.now+1.month,ticket_fee:1000)
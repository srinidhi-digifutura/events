# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email:"vamsi@digifutura.com",password:"password",name:"Vamsi")
User.create(email:"vikrant@digifutura.com",password:"password",name:"Vikrant")
first_user = User.first
user = User.last
user.events.create(title:"J S Channel",venue:"Auditorium",address:"Street 123",
	description:"Javascript founders are the guests",city:"Bengaluru",state:"Karnataka",
	event_date:"2016/6/8")
user.events.create(title:"J S 1",venue:"Auditorium",address:"Street 233",
	description:"Javascript founders are the guests",city:"Bengaluru",state:"Karnataka",
	event_date:"2016/6/10")
first_user.events.create(title:"J 2",venue:"Auditorium",address:"Street 893",
	description:"Javascript founders are the guests",city:"Bengaluru",state:"Karnataka",
	event_date:"2016/6/12")
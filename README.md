# events
Simple ticketing platform having bunch of events. Users can sign-up and sign-in. Can visit a event page attend an event page and see who else is attending

Pull request from the Master.

bundle install

rake db:migrate

rake db:seed

seeds.rb - This will create 3 users "pradeep@gmail.com", "nishit@gmail.com"  and "shradha@gmail.com". Password for all the users is "password"

Will create 3 events created by each one respectively. Can attend/unattend events. User can edit/delete only his/her events only.
Can know how many days left for a particular event and attend/unattend disappears for a past event.

While creating a new event please enter a valid date which is NOT Past date. 

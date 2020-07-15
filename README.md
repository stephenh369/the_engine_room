# The Engine Room
### Summary
The Engine Room is a car showroom inventory CRUD app that would in theory be used by staff/management at a car showroom/dealership.
I undertook this project with a deadline of 1 week to use as my Ruby project for my studies at CodeClan.

### Technologies
#### Front-end
* HTML/CSS(Vanilla)
* Ruby/Sinatra
#### Back-end
* Ruby
* PostgreSQL

### How To Run
To run this app on your local machine:
* Clone this repository
* Have Ruby and PostgreSQL installed
* Ruby requires a couple of extensions or 'gems' to run this so in command line/terminal run the following commands:
  * 'gem install pg'
  * 'gem install pry'
  * 'gem install sinatra'
* In command line/terminal, use the createdb command to create a database called 'engine_room'(createdb engine_room)
* Run the SQL file with the database by navigating to the project directory within terminal, and using the following command:
  * 'psql -d engine_room -f db/engine_room.sql'
* In the same directory, now run 'ruby app.rb'
* Now open up your internet browser and go to address 'localhost:port number', 
you'll find the port number in the wall of text that followed in terminal but for me its 4567.
* Now it should be running!

### Project Brief
[Project Brief Link](https://github.com/stephenh369/codeclan_ruby_project_the_engine_room/blob/master/planning/READMES/Shop_Inventory.md)

### Screenshots

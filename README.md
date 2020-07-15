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
* Clone this repository.
* Have Ruby and PostgreSQL installed.
* Ruby requires a couple of extensions or 'gems' to run this so in command line/terminal run the following commands:
  * 'gem install pg'
  * 'gem install pry'
  * 'gem install sinatra'
* In command line/terminal, use the createdb command to create a database called 'engine_room'(createdb engine_room).
* Run the SQL file with the database by navigating to the project directory within terminal, and using the following command:
  * 'psql -d engine_room -f db/engine_room.sql'
* In the same directory, now run 'ruby app.rb'.
* Now open up your internet browser and go to address 'localhost:port number', 
you'll find the port number in the wall of text that followed in terminal but for me its 4567.
* Now it should be running!

### Project Brief
[Project Brief Link](https://github.com/stephenh369/codeclan_ruby_project_the_engine_room/blob/master/planning/READMES/Shop_Inventory.md)

### Screenshots
#### The Home Screen
![Home Screen](/planning/screenshots/home_screen.png)
A clean, minimalistic home page to greet the user first of all.
#### Stock List
![Stock List](/planning/screenshots/stock_list.png)
Here we have all the cars currently stocked in a list that we can filter by manufacturer. An issue with this is having to add a new filter button for every new manufacturer added, but I've made do with the tools I've got in this case to do some kind of filter feature. the button which corresponds to the current page we are on will appear in this dull blue colour, and when hovered over it will turn dark blue and opacity is brought back up. The '+' button has a similar effect, and of course takes us to the new car form.
#### Manufacturer List
![Manufacturer List](/planning/screenshots/manufacturer_list.png)
Same as Stock List but with a list of manufacturers that the showroom currently stocks. Holds the name, address of HQ and a contact number. The manufacturer has to exist in the database before a new car by that manufacturer can be created, for example I can't add anything by Nissan yet until I add Nissan to the manufacturers list.

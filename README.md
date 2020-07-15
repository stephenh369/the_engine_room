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
Here we have all the cars currently stocked in a list that we can filter by manufacturer. The filter used to be hard coded buttons for each manufacturer but the problem with this was having to add a new button if there was ever an additional manufacturer added by user, which for obvious reasons is not ideal. So its been swapped to a drop down menu which will retrieve all manufacturers currently stored in the database. The button which corresponds to the current page will appear in this dull blue colour, and when hovered over it will turn dark blue and opacity is brought back up. The '+' button has a similar effect, and of course takes us to the new car form.
#### Manufacturer List
![Manufacturer List](/planning/screenshots/manufacturer_list.png)
Same as Stock List but with a list of manufacturers that the showroom currently stocks. Holds the name, address of HQ and a contact number. The manufacturer has to exist in the database before a new car by that manufacturer can be created, for example I can't add anything by Nissan yet until I add Nissan to the manufacturers list.
#### New Car Form
![New Car Form](/planning/screenshots/new_car_form.png)
Just a simple form where you would enter details to add a new car to database.
#### Edit Car Form
![Edit Car Form](/planning/screenshots/edit_car_form.png)
Same as a new form, but this one retrieves previously entered information and allows you to make changes.
#### Show Details
![Show Details Page](/planning/screenshots/show_details_car.png)
This is where you would find all the information about the car, you can find this for each entry by clicking the details button of the car you want to see on the stock list page.

![Show Details Page(stock = 0)](/planning/screenshots/show_details_car_0_stock.png)
If all stock for car has currently been sold the colour of the stock text will change to visually highlight this, the profit margin between the buy and sell price of the car is also visually highlighted(+green if profit, -red if loss).

![Show Details Page](/planning/screenshots/show_details_car_more_stock_profit_loss.png)
Same goes for if there is more than 1 of a similar car, for example a commercial vehicle or something in mass production. This will be highlighted in blue with the actual stock number in parenthesis.

require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/Car')
require_relative('../models/Manufacturer')
also_reload('../models/*')

get '/cars' do
    @cars = Car.all()
    @manufacturers = Manufacturer.all()
    erb(:"cars/index")
end

get '/cars/new' do
    @cars = Car.all()
    @manufacturers = Manufacturer.all()
    erb(:"cars/new")
end

get '/cars/:id' do
    @car = Car.find(params['id'].to_i)
    erb(:"cars/show")
end

post '/cars' do
    car = Car.new(params)
    car.save
    redirect to("/cars")
  end
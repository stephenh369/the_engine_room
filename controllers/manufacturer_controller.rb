require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/Manufacturer')
require_relative('../models/Car')
also_reload('../models/*')

get '/manufacturers' do
    @manufacturers = Manufacturer.all()
    erb(:"manufacturers/index")
end

get '/manufacturers/new' do
    @manufacturers = Manufacturer.all()
    erb(:"manufacturers/new")
end

get '/manufacturers/:id' do
    @manufacturer = Manufacturer.find(params[:id].to_i)
    erb(:"manufacturers/show")
end
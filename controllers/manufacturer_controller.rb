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

post '/manufacturers' do
    Manufacturer.new(params).save()
    redirect "/manufacturers"
end

post '/manufacturers/:id/delete' do
    @manufacturer = Manufacturer.find(params[:id].to_i)
    @manufacturer.delete()
    redirect "/manufacturers"
end
require('sinatra')
require('sinatra/contrib/all')
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
    @car = Car.find(params[:id].to_i)
    if @car.stock == 0
        @span1 = "Out Of Stock"
    elsif @car.stock == 1
        @span2 = "Available"
    elsif @car.stock > 1
        @span3 = "More Than 1 Available (#{@car.stock})"
    end

    profit_margin = @car.sell_price - @car.buy_price
    if  profit_margin > 0
        @span_profit = "+#{@car.sell_price - @car.buy_price}"
    elsif profit_margin < 0
        @span_loss = "#{@car.sell_price - @car.buy_price}"
    end
    erb(:"cars/show")
end

get '/cars/:id/edit' do
    @car = Car.find(params[:id].to_i)
    @manufacturers = Manufacturer.all()
    erb(:"cars/edit")
end

post '/cars' do
    @car = Car.new(params).save()
    redirect "/cars"
end

post '/cars/:id/delete' do
    @car = Car.find(params[:id].to_i)
    @car.delete()
    redirect "/cars"
end

post '/cars/:id' do
    @car = Car.new(params)
    @car.update()
    redirect "/cars"
end
# DEPENDANCIES
require('pry-byebug')
require_relative( "../models/Manufacturer" )
require_relative( "../models/Car" )

# RESET
Manufacturer.delete_all()
Car.delete_all()

# OBJECTS
manufacturer1 = Manufacturer.new({
    'name' => 'Ford',
    'hq' => 'Michigan, Detroit, USA',
    'tel_no' => '020 3564 4444'
})
manufacturer1.save()
manufacturer2 = Manufacturer.new({
    'name' => 'BMW',
    'hq' => 'Munich, Germany',
    'tel_no' => '0800 325600'
})
manufacturer2.save()
manufacturer3 = Manufacturer.new({
    'name' => 'Toyota',
    'hq' => 'Toyota, Aichi, Japan',
    'tel_no' => '0344 701 6202'
})
manufacturer3.save()

car1 = Car.new({
    'manufacturer' => manufacturer1.id,
    'model' => "Fiesta ST",
    'condition' => 'Used - Like New',
    'type' => 'Hatchback',
    'year' => '2015',
    'engine' => '1.6L',
    'transmission' => 'Manual',
    'fuel_type' => 'Petrol',
    'description' => 'Great runner, never tracked or abused, 1 lady owner.',
    'stock' => 1,
    'buy_price' => 10000,
    'sell_price' => 12999
})
car1.save()


# UPDATE/DELETE
 






binding.pry
nil
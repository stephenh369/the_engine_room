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
    'models' => ['Fiesta', 'Focus', 'Mustang', 'Transit']
})
manufacturer1.save()
manufacturer2 = Manufacturer.new({
    'name' => 'BMW',
    'models' => ['3 Series', '5 Series', 'M4', 'E46 M3']
})
manufacturer2.save()
manufacturer3 = Manufacturer.new({
    'name' => 'Toyota',
    'models' => ['Corolla', 'Land Cruiser', 'MR2(Mk2)', 'Supra(Mk4)']
})
manufacturer3.save()

car1 = Car.new({
    'manufacturer' => manufacturer1.id,
    'model' => "Fiesta",
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
# manufacturer1.models.push('Ka')
# manufacturer1.update()

# manufacturer1.delete()




binding.pry
nil
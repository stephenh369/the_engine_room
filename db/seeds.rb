require('pry-byebug')
require_relative( "../models/Manufacturer" )
require_relative( "../models/Car" )

manufacturer1 = Manufacturer.new({
    'name' => 'Ford',
    'models' => ['Fiesta', 'Focus', 'Mustang', 'Transit']
})
manufacturer1.save()




binding.pry
nil
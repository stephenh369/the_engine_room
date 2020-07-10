require('pry-byebug')
require_relative( "../models/Manufacturer" )
require_relative( "../models/Car" )

manufacturer1 = Manufacturer.new({
    'name' => 'Ford',
    'models' => ['Fiesta', 'Focus', 'Mustang', 'Transit']
})
manufacturer1.save()

# manufacturer1.models.push('Ka')
# manufacturer1.update()



binding.pry
nil
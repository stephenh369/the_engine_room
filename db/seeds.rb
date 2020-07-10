# DEPENDANCIES
require('pry-byebug')
require_relative( "../models/Manufacturer" )
require_relative( "../models/Car" )

# RESET
Manufacturer.delete_all()

# OBJECTS
manufacturer1 = Manufacturer.new({
    'name' => 'Ford',
    'models' => ['Fiesta', 'Focus', 'Mustang', 'Transit']
})
manufacturer1.save()


# UPDATE/DELETE
# manufacturer1.models.push('Ka')
# manufacturer1.update()

# manufacturer1.delete()




binding.pry
nil
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


# UPDATE/DELETE
# manufacturer1.models.push('Ka')
# manufacturer1.update()

# manufacturer1.delete()




binding.pry
nil
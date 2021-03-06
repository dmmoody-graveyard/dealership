require('rspec')
require('dealer')

describe(Vehicle) do
  before() do
    Vehicle.clear()
  end

  describe('#save') do
    it('saves the make, model, and year of a vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2015")
      expect(test_vehicle.save()).to(eq([test_vehicle]))
    end
  end

  describe('#make') do
    it('returns make of vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2015")
      test_vehicle.save()
      expect(test_vehicle.make()).to(eq("Toyota"))
    end
  end

  describe('#model') do
    it('returns model of vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2015")
      expect(test_vehicle.model()).to(eq("Prius"))
    end
  end

  describe('#year') do
    it('returns year of vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2015)
      expect(test_vehicle.year()).to(eq(2015))
    end
  end

  describe('#clear') do
    it('clears the list of vehicles') do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2015")
      test_vehicle.save()
      expect(Vehicle.clear()).to(eq([]))
    end
  end

  describe('#all') do
    it('returns all vehicles') do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2015")
      test_vehicle.save()
      expect(Vehicle.all()).to(eq([test_vehicle]))
    end
  end

  describe('#age') do
    it('returns age of vehicle') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2014)
      test_vehicle.save()
      expect(test_vehicle.age()).to(eq(1))
    end
  end

  describe('#worth_buying?') do
    it('determines if the car is worth buying within desired makes and age') do
      test_vehicle = Vehicle.new("Toyota", "Prius", 2010)
      test_vehicle.save()
      expect(test_vehicle.worth_buying?(["Toyota", "Ford"], 10)).to(eq(true))
    end
  end

#   describe('#find') do
#     it('returns a vehicle by its auto_id') do
#       test_vehicle1 = Vehicle.new("Toyota", "Prius", 2010)
#       test_vehicle1.save()
#       test_vehicle2 = Vehicle.new("Ford", "Escort", 1980)
#       test_vehicle2.save()
#       expect(Vehicle.find(test_vehicle1.id())).to(eq(test_vehicle))
#     end
#   end
# end

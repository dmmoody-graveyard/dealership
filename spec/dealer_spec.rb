require('rspec')
require('dealer')

describe(Vehicle) do

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

  describe('#clear') do
    it('clears the list of vehicles') do
      test_vehicle = Vehicle.new("Toyota", "Prius", "2015")
      test_vehicle.save()
      expect(test_vehicle.clear()).to(eq([]))
    end
  end
end

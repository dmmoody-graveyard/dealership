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
end

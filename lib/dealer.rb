  class Vehicle
    @@vehicle = []

    define_method(:initialize) do |make, model, year|
      @make = make
      @model = model
      @year = year
      @id = @@vehicle.length()
    end

    define_method(:save) do
      @@vehicle.push(self)
    end

    define_method(:make) do
      @make
    end

    define_method(:model) do
      @model
    end

    define_method(:year) do
      @year
    end

    define_singleton_method(:clear) do
      @@vehicle = []
    end

    define_singleton_method(:all) do
      @@vehicle
    end

    define_method(:age) do
      current_year = Time.new()
      vehicle_age = current_year.year().-(@year)
    end

    define_method(:worth_buying?) do |desired_cars, desired_age|
      @desired_cars = desired_cars
      @desired_age = desired_age
      if @desired_cars.include?(@make).&(self.age <= @desired_age)
        true
      end
    end

    define_singleton_method(:find) do |identifaction|
      found_vehicle = nil
      @@vehicle.each() do |vehicle|
        if vehicle.id().eql?(identification.to_i())
          found_vehicle = vehicle
        end
      end
      found_vehicle
    end
end

class Vehicle
  attr_reader :vehicle_type
  def initialize(type)
    @vehicle_type = type
  end
end

class Customer
  attr_reader :customer_name, :customer_phone
  def initialize(name, phone)
    @customer_name = name
    @customer_phone = phone
  end
end

class Rental
end

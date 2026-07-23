class Vehicle
    def fuel
        "Check the battery status"
    end
end

class Elcetriccar<Vehicle
    def fuel
        "Recharge"
    end
end

car=Elcetriccar.new
puts car.fuel
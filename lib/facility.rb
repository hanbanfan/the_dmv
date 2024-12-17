require_relative 'vehicle'

class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  # Initializes a Facility with details and an empty services list
  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []
    @registered_vehicles = []
    @collected_fees = 0
  end

  # Adds a service to the facility
  def add_service(service)
    @services << service
  end

  # Registers a vehicle and calculates fees
  def register_vehicle(vehicle)
    return nil unless @services.include?('Vehicle Registration')

    vehicle.register
    @registered_vehicles << vehicle
    @collected_fees += calculate_fee(vehicle)
  end

  # Calculates registration fees based on plate type
  def calculate_fee(vehicle)
    case vehicle.plate_type
    when :antique
      25
    when :ev
      200
    else
      100
    end
  end
end


require_relative 'vehicle'

<<<<<<< HEAD
<<<<<<< HEAD
# The Vehicle class represents a registered vehicle.
class Vehicle
<<<<<<< HEAD
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :plate_type
=======
  attr_reader :vin, :year, :make, :model, :engine, :registration_date
>>>>>>> feature/facility-class

=======
# The Vehicle class represents a car, truck, or other registered vehicle.
class Vehicle
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :plate_type

  # Initializes a Vehicle object with attributes
>>>>>>> feature/vehicle-class
  def initialize(details)
    @vin = details[:vin]
    @year = details[:year]
    @make = details[:make]
    @model = details[:model]
    @engine = details[:engine]
<<<<<<< HEAD
<<<<<<< HEAD
    @registration_date = nil
    @plate_type = nil
  end

  # Registers the vehicle and determines the plate type.
=======
    @registration_date = nil  # Default: not registered
    @plate_type = nil         # Default: no plate type
  end

  # Registers the vehicle and assigns a plate type
>>>>>>> feature/vehicle-class
  def register
    @registration_date = Date.today
    @plate_type = determine_plate_type
  end

<<<<<<< HEAD
  # Determines plate type.
  def determine_plate_type
    return :antique if antique?
    return :ev if electric?
    :regular
=======
    @registration_date = nil # Default value
>>>>>>> feature/facility-class
  end

  # Check if the vehicle is antique
=======
  # Determines the plate type: antique, electric, or regular
  def determine_plate_type
    if antique?
      :antique
    elsif electric?
      :ev
    else
      :regular
    end
  end

  # Determines if the vehicle is antique (older than 25 years)
>>>>>>> feature/vehicle-class
  def antique?
    Date.today.year - @year > 25
  end

<<<<<<< HEAD
<<<<<<< HEAD
=======
  # Determines if the vehicle is electric
>>>>>>> feature/vehicle-class
  def electric?
    @engine == :ev
=======
  # Register the vehicle
  def register
    @registration_date = Date.today
>>>>>>> feature/facility-class
=======
# The VehicleFactory class creates Vehicle objects from external data sources.
class VehicleFactory
  # Creates an array of Vehicle objects from external data.
  # @param data [Array<Hash>] An array of vehicle details from the API.
  # @return [Array<Vehicle>] An array of Vehicle objects.
  def create_vehicles(data)
    data.map do |vehicle_data|
      Vehicle.new({
        vin: vehicle_data[:vin_1_10],
        year: vehicle_data[:model_year].to_i,
        make: vehicle_data[:make],
        model: vehicle_data[:model],
        engine: :ev # Since data is for EV registrations, set engine type to :ev
      })
    end
>>>>>>> feature/registrant-factories
  end
end


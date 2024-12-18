require 'date'

# The Vehicle class represents a registered vehicle.
class Vehicle
<<<<<<< HEAD
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :plate_type
=======
  attr_reader :vin, :year, :make, :model, :engine, :registration_date
>>>>>>> feature/facility-class

  def initialize(details)
    @vin = details[:vin]
    @year = details[:year]
    @make = details[:make]
    @model = details[:model]
    @engine = details[:engine]
<<<<<<< HEAD
    @registration_date = nil
    @plate_type = nil
  end

  # Registers the vehicle and determines the plate type.
  def register
    @registration_date = Date.today
    @plate_type = determine_plate_type
  end

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
  def antique?
    Date.today.year - @year > 25
  end

<<<<<<< HEAD
  def electric?
    @engine == :ev
=======
  # Register the vehicle
  def register
    @registration_date = Date.today
>>>>>>> feature/facility-class
  end
end

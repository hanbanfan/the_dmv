require 'date'

# The Vehicle class represents a car, truck, or other registered vehicle.
class Vehicle
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :plate_type

  # Initializes a Vehicle object with attributes
  def initialize(details)
    @vin = details[:vin]
    @year = details[:year]
    @make = details[:make]
    @model = details[:model]
    @engine = details[:engine]
    @registration_date = nil  # Default: not registered
    @plate_type = nil         # Default: no plate type
  end

  # Registers the vehicle and assigns a plate type
  def register
    @registration_date = Date.today
    @plate_type = determine_plate_type
  end

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
  def antique?
    Date.today.year - @year > 25
  end

  # Determines if the vehicle is electric
  def electric?
    @engine == :ev
  end
end


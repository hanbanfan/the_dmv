require 'date'

# The Vehicle class represents a registered vehicle.
class Vehicle
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :plate_type

  def initialize(details)
    @vin = details[:vin]
    @year = details[:year]
    @make = details[:make]
    @model = details[:model]
    @engine = details[:engine]
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
  end

  def antique?
    Date.today.year - @year > 25
  end

  def electric?
    @engine == :ev
  end
end

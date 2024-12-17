require 'date'

# The Vehicle class represents a registered vehicle at the DMV.
class Vehicle
  # Readable attributes for vehicle details and registration
  attr_reader :vin, :year, :make, :model, :engine, :registration_date, :plate_type

  # Initializes a Vehicle object with provided details
  # @param details: Hash containing vehicle attributes
  def initialize(details)
    @vin = details[:vin]          # Vehicle Identification Number
    @year = details[:year]        # Year of manufacture
    @make = details[:make]        # Manufacturer name
    @model = details[:model]      # Model of the vehicle
    @engine = details[:engine]    # Engine type (e.g., :ice, :ev)
    @registration_date = nil      # Default: vehicle is not registered
    @plate_type = nil             # Default: no plate type assigned
  end

  # Registers the vehicle
  # Sets the registration date to today's date and determines the plate type
  def register
    @registration_date = Date.today
    @plate_type = determine_plate_type
  end

  # Determines the plate type based on vehicle age and engine type
  # @return: Symbol representing plate type (:antique, :ev, or :regular)
  def determine_plate_type
    if antique?
      :antique
    elsif electric?
      :ev
    else
      :regular
    end
  end

  # Checks if the vehicle is antique (older than 25 years)
  # @return: Boolean indicating if the vehicle is antique
  def antique?
    Date.today.year - @year > 25
  end

  # Checks if the vehicle is electric
  # @return: Boolean indicating if the vehicle is electric
  def electric?
    @engine == :ev
  end
end


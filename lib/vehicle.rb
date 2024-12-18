require 'date'

class Vehicle
  attr_reader :vin, :year, :make, :model, :engine, :registration_date

  def initialize(details)
    @vin = details[:vin]
    @year = details[:year]
    @make = details[:make]
    @model = details[:model]
    @engine = details[:engine]
    @registration_date = nil # Default value
  end

  # Check if the vehicle is antique
  def antique?
    Date.today.year - @year > 25
  end

  # Register the vehicle
  def register
    @registration_date = Date.today
  end
end

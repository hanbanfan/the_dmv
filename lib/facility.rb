# Updated Facility class with initializer to accept a hash of details
class Facility
  attr_reader :name, :address, :phone, :services

  # Initialize with a hash containing the facility details
  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []
  end

  # Add a service to the facility
  def add_service(service)
    @services << service
  end
end


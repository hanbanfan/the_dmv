# The Facility class represents an individual DMV facility.
class Facility
  # Attributes for facility details and available services
  attr_reader :name, :address, :phone, :services

  # Initializes a Facility object with provided details
  # @param details: Hash containing :name, :address, and :phone
  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []  # Starts with no services
  end

  # Adds a service to the facility
  # @param service: String representing the service name
  def add_service(service)
    @services << service
  end
end

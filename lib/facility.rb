# The Facility class represents a DMV facility.
# It holds information about the facility such as name, address, phone number,
# and manages a list of services the facility offers.
class Facility
  # Read-only access to attributes: name, address, phone, services
  attr_reader :name, :address, :phone, :services

  # Initializes a Facility object with details such as name, address, and phone.
  # @param details [Hash] A hash containing the name, address, and phone details.
  # Example: { name: 'DMV Branch', address: '123 Main St', phone: '555-1234' }
  def initialize(details)
    @name = details[:name]       # Name of the facility
    @address = details[:address] # Address of the facility
    @phone = details[:phone]     # Phone number of the facility
    @services = []               # Array to hold the list of services offered
  end

  # Adds a service to the facility's list of services.
  # @param service [String] The name of the service to add.
  # Example: 'Vehicle Registration', 'Renew License'
  def add_service(service)
    @services << service
  end
end

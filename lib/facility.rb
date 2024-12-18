<<<<<<< HEAD
# Updated Facility class with initializer to accept a hash of details
class Facility
  attr_reader :name, :address, :phone, :services

  # Initialize with a hash containing the facility details
=======
require_relative 'vehicle'

class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  # Initializes a Facility with details and an empty services list
>>>>>>> feature/vehicle-class
  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []
<<<<<<< HEAD
  end

  # Add a service to the facility
  def add_service(service)
    @services << service
  end
end

=======
    @registered_vehicles = []
    @collected_fees = 0
  end

  # Adds a service to the facility
  def add_service(service)
    @services << service
  end

  class Facility
    attr_reader :name, :services
  
    def initialize(name)
      @name = name
      @services = []
    end
  
    def add_service(service)
      @services << service
    end
  end
>>>>>>> feature/vehicle-class

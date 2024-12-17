require_relative 'vehicle'

class Facility
  attr_reader :name, :address, :phone, :services, :registered_vehicles, :collected_fees

  # Initializes a Facility with details and an empty services list
  def initialize(details)
    @name = details[:name]
    @address = details[:address]
    @phone = details[:phone]
    @services = []
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
class Dmv
  attr_reader :facilities # Add this line to create a reader for the facilities attribute

  def initialize
    @facilities = [] # Initializes an empty array of facilities
  end

  # Adds a facility to the DMV
  def add_facility(facility)
    @facilities << facility
  end

  # Finds facilities offering a specific service
  def facilities_offering_service(service)
    @facilities.select do |facility|
      facility.services.include?(service)
    end
  end
end

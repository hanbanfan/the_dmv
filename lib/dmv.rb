<<<<<<< HEAD
# The Dmv class represents the core DMV system that manages facilities.
class Dmv
  # Provides read access to the list of facilities.
  attr_reader :facilities

  # Initializes the Dmv object with an empty array of facilities.
=======
# The Dmv class represents the DMV system that manages facilities.
class Dmv
  attr_reader :facilities

  # Initializes an empty array to store Facility objects.
>>>>>>> feature/vehicle-class
  def initialize
    @facilities = [] # Array to store Facility objects
  end

  # Adds a facility to the DMV.
<<<<<<< HEAD
  # @param facility [Facility] The facility object to be added.
=======
  # @param facility [Facility] The facility to add.
>>>>>>> feature/vehicle-class
  def add_facility(facility)
    @facilities << facility
  end

  # Returns facilities that offer a specific service.
<<<<<<< HEAD
  # @param service [String] The service to search for.
=======
  # @param service [String] The service name to search for.
>>>>>>> feature/vehicle-class
  # @return [Array<Facility>] List of facilities providing the service.
  def facilities_offering_service(service)
    @facilities.select { |facility| facility.services.include?(service) }
  end
end


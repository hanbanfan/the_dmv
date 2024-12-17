# The Dmv class represents the core DMV system that manages facilities.
class Dmv
  # Provides read access to the list of facilities.
  attr_reader :facilities

  # Initializes the Dmv object with an empty array of facilities.
  def initialize
    @facilities = [] # Array to store Facility objects
  end

  # Adds a facility to the DMV.
  # @param facility [Facility] The facility object to be added.
  def add_facility(facility)
    @facilities << facility
  end

  # Returns facilities that offer a specific service.
  # @param service [String] The service to search for.
  # @return [Array<Facility>] List of facilities providing the service.
  def facilities_offering_service(service)
    @facilities.select { |facility| facility.services.include?(service) }
  end
end


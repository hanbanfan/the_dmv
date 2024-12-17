# The Dmv class represents the DMV system that manages facilities.
class Dmv
  attr_reader :facilities

  # Initializes an empty array to store Facility objects.
  def initialize
    @facilities = []
  end

  # Adds a facility to the DMV.
  # @param facility [Facility] The facility to add.
  def add_facility(facility)
    @facilities << facility
  end

  # Returns facilities that offer a specific service.
  # @param service [String] The service name to search for.
  # @return [Array<Facility>] List of facilities providing the service.
  def facilities_offering_service(service)
    @facilities.select { |facility| facility.services.include?(service) }
  end
end


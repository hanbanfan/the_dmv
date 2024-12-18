<<<<<<< HEAD
=======

>>>>>>> feature/facility-class
require_relative 'facility'

# The FacilityFactory class creates Facility objects from external data sources.
class FacilityFactory
  # Creates an array of Facility objects from external data.
  # @param data [Array<Hash>] An array of facility details from the API.
  # @return [Array<Facility>] An array of Facility objects.
  def create_facilities(data)
    data.map do |facility_data|
      Facility.new({
        name: facility_data[:dmv_office],
        address: "#{facility_data[:address_li]}, #{facility_data[:city]}",
        phone: facility_data[:phone]
      })
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> feature/facility-class

require_relative 'facility'

# The FacilityFactory class is responsible for creating Facility objects from external data.
class FacilityFactory
  # Creates Facility objects from provided data
  #  Array of hashes containing facility details
  # @return: Array of Facility objects
  def create_facilities(data)
    data.map do |facility_data|
      Facility.new({
        name: facility_data[:dmv_office],
        address: facility_data[:address_li],
        phone: facility_data[:phone]
      })
    end
  end
end

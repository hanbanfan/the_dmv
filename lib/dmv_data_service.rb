require 'faraday'
require 'json'

# The DmvDataService class retrieves external data from an API.
class DmvDataService
  # Loads data from a given URL
  # @param source: String URL for the data source
  # @return: Parsed JSON data
  def load_data(source)
    response = Faraday.get(source)
    JSON.parse(response.body, symbolize_names: true)
  end

  # Retrieves Washington EV Registration data
  def wa_ev_registrations
    load_data('https://data.wa.gov/resource/rpr4-cgyd.json')
  end

  # Retrieves Colorado DMV Office Locations data
  def co_dmv_office_locations
    load_data('https://data.colorado.gov/resource/dsw3-mrn4.json')
  end

  # Retrieves New York DMV Office Locations data
  def ny_dmv_office_locations
    load_data('https://data.ny.gov/resource/9upz-c7xg.json')
  end

  # Retrieves Missouri DMV Office Locations data
  def mo_dmv_office_locations
    load_data('https://data.mo.gov/resource/835g-7keg.json')
  end
end

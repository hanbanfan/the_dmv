require_relative 'vehicle'

# The VehicleFactory class is responsible for creating Vehicle objects from external data.
class VehicleFactory
  # Creates Vehicle objects from provided data
  # @param data: Array of hashes containing vehicle details
  # @return: Array of Vehicle objects
  def create_vehicles(data)
    data.map do |vehicle_data|
      Vehicle.new({
        vin: vehicle_data[:vin_1_10],
        year: vehicle_data[:model_year].to_i,
        make: vehicle_data[:make],
        model: vehicle_data[:model],
        engine: :ev  # Default engine type to electric for external EV data
      })
    end
  end
end

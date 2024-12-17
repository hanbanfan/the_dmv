require_relative 'vehicle'

# The VehicleFactory class creates Vehicle objects from external data sources.
class VehicleFactory
  # Creates an array of Vehicle objects from external data.
  # @param data [Array<Hash>] An array of vehicle details from the API.
  # @return [Array<Vehicle>] An array of Vehicle objects.
  def create_vehicles(data)
    data.map do |vehicle_data|
      Vehicle.new({
        vin: vehicle_data[:vin_1_10],
        year: vehicle_data[:model_year].to_i,
        make: vehicle_data[:make],
        model: vehicle_data[:model],
        engine: :ev # Since data is for EV registrations, set engine type to :ev
      })
    end
  end
end


class VehicleFactory
  def create_vehicles(data)
    data.map do |vehicle_data|
      Vehicle.new({
        vin: vehicle_data[:vin_1_10],
        year: vehicle_data[:model_year].to_i,
        make: vehicle_data[:make],
        model: vehicle_data[:model],
        engine: :ev
      })
    end
  end
end

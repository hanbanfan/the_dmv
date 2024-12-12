require './lib/vehicle_factory'
require './lib/dmv_data_service'

RSpec.describe VehicleFactory do
  it 'creates vehicles from external data' do
    factory = VehicleFactory.new
    data = DmvDataService.new.wa_ev_registrations
    vehicles = factory.create_vehicles(data)

    expect(vehicles).to all(be_a(Vehicle))
    expect(vehicles.first.vin).to eq(data.first[:vin_1_10])
    expect(vehicles.first.engine).to eq(:ev)
  end
end

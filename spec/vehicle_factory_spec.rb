require 'rspec'
require './lib/vehicle_factory'
require './lib/vehicle'

RSpec.describe VehicleFactory do
  before(:each) do
    @factory = VehicleFactory.new
    @data = [
      { vin_1_10: '123ABC4567', model_year: '2012', make: 'Toyota', model: 'Prius' },
      { vin_1_10: '456DEF7890', model_year: '2019', make: 'Tesla', model: 'Model S' }
    ]
  end

  it 'can create vehicles from external data' do
    vehicles = @factory.create_vehicles(@data)

    expect(vehicles.length).to eq(2)
    expect(vehicles.first).to be_a(Vehicle)
    expect(vehicles.first.vin).to eq('123ABC4567')
    expect(vehicles.first.make).to eq('Toyota')
    expect(vehicles.first.model).to eq('Prius')
    expect(vehicles.first.engine).to eq(:ev)
  end
end

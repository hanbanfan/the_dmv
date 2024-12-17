require 'rspec'
require './lib/facility'
require './lib/vehicle'

RSpec.describe Facility do
  before(:each) do
    @facility = Facility.new({
      name: 'DMV Main Branch',
      address: '123 Main St',
      phone: '555-1234'
    })

    @vehicle = Vehicle.new({
      vin: '123456789ABCDEFG',
      year: 2000,
      make: 'Toyota',
      model: 'Camry',
      engine: :ice
    })
  end

  it 'initializes with details and no services' do
    expect(@facility.name).to eq('DMV Main Branch')
    expect(@facility.address).to eq('123 Main St')
    expect(@facility.phone).to eq('555-1234')
    expect(@facility.services).to eq([])
    expect(@facility.registered_vehicles).to eq([])
    expect(@facility.collected_fees).to eq(0)
  end

  it 'can add services' do
    @facility.add_service('Vehicle Registration')
    expect(@facility.services).to include('Vehicle Registration')
  end

  it 'can register a vehicle and collect fees' do
    @facility.add_service('Vehicle Registration')
    @facility.register_vehicle(@vehicle)

    expect(@facility.registered_vehicles).to include(@vehicle)
    expect(@vehicle.registration_date).to be_a(Date)
    expect(@vehicle.plate_type).to eq(:regular)
    expect(@facility.collected_fees).to eq(100)
  end
end

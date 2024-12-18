<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> feature/vehicle-class
require 'rspec'
require './lib/vehicle'

RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new({
      vin: '123456789ABCDEFG',
<<<<<<< HEAD
=======
RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new({
      vin: '123ABC',
>>>>>>> feature/facility-class
=======
>>>>>>> feature/vehicle-class
      year: 2000,
      make: 'Toyota',
      model: 'Camry',
      engine: :ice
    })
  end

<<<<<<< HEAD
<<<<<<< HEAD
  it 'can initialize with details' do
    expect(@vehicle.vin).to eq('123456789ABCDEFG')
=======
  it 'can initialize with attributes' do
    expect(@vehicle.vin).to eq('123ABC')
>>>>>>> feature/facility-class
    expect(@vehicle.year).to eq(2000)
    expect(@vehicle.make).to eq('Toyota')
    expect(@vehicle.model).to eq('Camry')
    expect(@vehicle.registration_date).to eq(nil)
  end

<<<<<<< HEAD
  it 'can register a vehicle and assign plate type' do
    @vehicle.register
    expect(@vehicle.registration_date).to be_a(Date)
    expect(@vehicle.plate_type).to eq(:regular)
=======
  it 'can register a vehicle' do
    @vehicle.register
    expect(@vehicle.registration_date).to eq(Date.today)
>>>>>>> feature/facility-class
=======
  it 'initializes with attributes' do
    expect(@vehicle.vin).to eq('123456789ABCDEFG')
    expect(@vehicle.year).to eq(2000)
    expect(@vehicle.make).to eq('Toyota')
    expect(@vehicle.model).to eq('Camry')
    expect(@vehicle.engine).to eq(:ice)
    expect(@vehicle.registration_date).to be_nil
    expect(@vehicle.plate_type).to be_nil
  end

  it 'can register and assign a plate type' do
    @vehicle.register
    expect(@vehicle.registration_date).to be_a(Date)
    expect(@vehicle.plate_type).to eq(:regular)
  end

  it 'can determine if vehicle is antique' do
    expect(@vehicle.antique?).to eq(true)
>>>>>>> feature/vehicle-class
  end
end


  describe '#electric_vehicle?' do
    it 'can determine if a vehicle is an ev' do
      expect(@cruz.electric_vehicle?).to eq(false)
      expect(@bolt.electric_vehicle?).to eq(true)
      expect(@camaro.electric_vehicle?).to eq(false)
    end
  end
end

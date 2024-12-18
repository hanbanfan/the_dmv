RSpec.describe Vehicle do
  before(:each) do
    @vehicle = Vehicle.new({
      vin: '123ABC',
      year: 2000,
      make: 'Toyota',
      model: 'Camry',
      engine: :ice
    })
  end

  it 'can initialize with attributes' do
    expect(@vehicle.vin).to eq('123ABC')
    expect(@vehicle.year).to eq(2000)
    expect(@vehicle.make).to eq('Toyota')
    expect(@vehicle.model).to eq('Camry')
    expect(@vehicle.registration_date).to eq(nil)
  end

  it 'can register a vehicle' do
    @vehicle.register
    expect(@vehicle.registration_date).to eq(Date.today)
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

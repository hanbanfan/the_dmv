RSpec.describe Facility do
  before(:each) do
    # Update to pass a hash for initialization
    @facility = Facility.new({
      name: 'DMV Main Branch',
      address: '123 Main St',
      phone: '555-1234'
    })
  end

  it 'can initialize with attributes' do
    expect(@facility.name).to eq('DMV Main Branch')
    expect(@facility.address).to eq('123 Main St')
    expect(@facility.phone).to eq('555-1234')
    expect(@facility.services).to eq([])
  end

  it 'can add services' do
    @facility.add_service('Vehicle Registration')
    @facility.add_service('Road Test')

    expect(@facility.services).to include('Vehicle Registration', 'Road Test')
  end
end


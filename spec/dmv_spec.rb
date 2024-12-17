require 'rspec'
require './lib/dmv'

RSpec.describe Dmv do
  before(:each) do
    @dmv = Dmv.new # Creates a new Dmv instance before each test
  end

  it 'can initialize' do
    expect(@dmv).to be_a(Dmv) # Checks that @dmv is an instance of Dmv
    expect(@dmv.facilities).to eq([]) # Facilities array should start empty
  end

  it 'can add facilities' do
    mock_facility_1 = double('Facility', services: ['Renew License'])
    mock_facility_2 = double('Facility', services: ['Vehicle Registration'])

    @dmv.add_facility(mock_facility_1)
    @dmv.add_facility(mock_facility_2)

    expect(@dmv.facilities).to include(mock_facility_1)
    expect(@dmv.facilities).to include(mock_facility_2)
  end

  it 'can return facilities offering a specified service' do
    facility_1 = double('Facility', services: ['Renew License'])
    facility_2 = double('Facility', services: ['Vehicle Registration'])
    facility_3 = double('Facility', services: ['Renew License', 'Road Test'])

    @dmv.add_facility(facility_1)
    @dmv.add_facility(facility_2)
    @dmv.add_facility(facility_3)

    result = @dmv.facilities_offering_service('Renew License')
    expect(result).to eq([facility_1, facility_3])
  end
end


require 'rspec'
require './lib/dmv'

# Test suite for the Dmv class
RSpec.describe Dmv do
  before(:each) do
    @dmv = Dmv.new
  end

  it 'initializes with no facilities' do
    expect(@dmv.facilities).to eq([]) # Facilities start as an empty array
  end

  it 'can add facilities' do
    mock_facility = double('Facility', services: ['Renew License'])
    @dmv.add_facility(mock_facility)

    expect(@dmv.facilities).to include(mock_facility)
  end

  it 'can find facilities offering a specific service' do
    facility_1 = double('Facility', services: ['Vehicle Registration'])
    facility_2 = double('Facility', services: ['Renew License'])
    @dmv.add_facility(facility_1)
    @dmv.add_facility(facility_2)

    result = @dmv.facilities_offering_service('Renew License')
    expect(result).to eq([facility_2])
  end
end

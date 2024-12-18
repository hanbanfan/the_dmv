<<<<<<< HEAD
<<<<<<< HEAD
=======
>>>>>>> feature/vehicle-class
require 'rspec'
require './lib/dmv'

# Test suite for the Dmv class
=======
>>>>>>> feature/facility-class
RSpec.describe Dmv do
  before(:each) do
<<<<<<< HEAD
    @dmv = Dmv.new
  end

<<<<<<< HEAD
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
=======
  it 'can initialize with no facilities' do
    expect(@dmv.facilities).to eq([])
  end

  it 'can add facilities' do
    # Pass a hash for Facility initialization
    facility = Facility.new({ name: 'DMV Branch', address: '123 St', phone: '555-5555' })
    @dmv.add_facility(facility)

    expect(@dmv.facilities).to include(facility)
  end

  it 'can find facilities offering specific services' do
    facility_1 = Facility.new({ name: 'DMV 1', address: '123 St', phone: '555-5551' })
    facility_2 = Facility.new({ name: 'DMV 2', address: '456 St', phone: '555-5552' })
    facility_1.add_service('Vehicle Registration')
    facility_2.add_service('Renew License')

    @dmv.add_facility(facility_1)
    @dmv.add_facility(facility_2)

    expect(@dmv.facilities_offering_service('Vehicle Registration')).to eq([facility_1])
    expect(@dmv.facilities_offering_service('Renew License')).to eq([facility_2])
>>>>>>> feature/facility-class
=======
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
>>>>>>> feature/vehicle-class
  end
end


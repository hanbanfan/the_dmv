<<<<<<< HEAD
require 'rspec'            # Require RSpec for testing
require './lib/facility'   # Require the Facility class file to test

# RSpec test suite for the Facility class
=======
>>>>>>> feature/facility-class
RSpec.describe Facility do
  # Runs before each test block to create a fresh Facility object
  before(:each) do
<<<<<<< HEAD
    # Initialize a facility with a hash of details
    @facility = Facility.new({ 
      name: 'DMV Main Branch', 
      address: '123 Main St', 
      phone: '555-1234' 
    })
  end

  # Test to check if a Facility object initializes correctly
  it 'initializes with details' do
    # Check the attributes of the Facility instance
    expect(@facility.name).to eq('DMV Main Branch')
    expect(@facility.address).to eq('123 Main St')
    expect(@facility.phone).to eq('555-1234')
    expect(@facility.services).to eq([]) # Services should start as an empty array
  end

  # Test to verify that services can be added to a facility
  it 'can add services' do
    # Add a service to the facility
    @facility.add_service('Vehicle Registration')
    @facility.add_service('Renew License')

    # Check if the services list contains the added services
    expect(@facility.services).to include('Vehicle Registration')
    expect(@facility.services).to include('Renew License')
    expect(@facility.services.length).to eq(2) # Check the count of services
=======
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
>>>>>>> feature/facility-class
  end
end


RSpec.describe Dmv do
  before(:each) do
    @dmv = Dmv.new
  end

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
  end
end

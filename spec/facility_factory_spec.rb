require 'rspec'
require './lib/facility_factory'
require './lib/facility'

RSpec.describe FacilityFactory do
  before(:each) do
    @factory = FacilityFactory.new
    @data = [
      { dmv_office: 'Denver DMV', address_li: '123 Main St', city: 'Denver', phone: '555-1234' },
      { dmv_office: 'Boulder DMV', address_li: '456 Pearl St', city: 'Boulder', phone: '555-5678' }
    ]
  end

  it 'can create facilities from external data' do
    facilities = @factory.create_facilities(@data)

    expect(facilities.length).to eq(2)
    expect(facilities.first.name).to eq('Denver DMV')
    expect(facilities.first.address).to eq('123 Main St, Denver')
    expect(facilities.first.phone).to eq('555-1234')
  end
end

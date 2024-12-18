require 'rspec'
require './lib/registrant'

RSpec.describe Registrant do
  before(:each) do
    @registrant = Registrant.new('Bruce', 18, true)
  end

  it 'can initialize with attributes' do
    expect(@registrant.name).to eq('Bruce')
    expect(@registrant.age).to eq(18)
    expect(@registrant.permit?).to eq(true)
    expect(@registrant.license_data).to eq({ written: false, license: false, renewed: false })
  end

  it 'can earn a permit' do
    registrant = Registrant.new('Penny', 15)

    expect(registrant.permit?).to eq(false)

    registrant.earn_permit
    expect(registrant.permit?).to eq(true)
  end
end

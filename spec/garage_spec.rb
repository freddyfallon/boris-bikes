require 'garage'

describe Garage do
  it {is_expected.to respond_to(:deliver_bike).with(1).argument}

  it 'receives broken bikes from the van' do
    van = Van.new
    van.van_bikes.push(Bike.new)
    subject.deliver_bike(van)
    expect(subject.garage_bikes).to eq van.van_bikes
  end

end

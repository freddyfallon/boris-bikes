require 'van'

describe Van do
let (:bike) {double :bike}
let (:station) {double :station}
  it 'has bikes on board after ' do
    bike = Bike.new
    station = DockingStation.new
    bike.break
    station.dock(bike)
    subject.get_bikes(station)
    expect(subject.van_bikes).to eq [bike]

    # bike = double(:bike, working: false)
    # allow(:station).stub_chain(:broken_bikes, :count).and_return 1
    # expect(van.van_bikes.count).to eq station.broken_bikes.count

    # bike = double(:bike, working:false)
    # station = DockingStation.new
    # station.dock(bike)
    # subject.get_bikes(station)
    # expect(subject.van_bikes.count).to eq 1
    #bike = double(:bike, working?: false)
    #station = double(:station, bikes: bike)
    #expect(subject.get_bikes(station)).to eq bike
    #subject.van_bikes = bike
    #expect(subject.van_bikes).to eq station.bikes
  end
end

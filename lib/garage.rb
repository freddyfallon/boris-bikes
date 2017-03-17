class Garage
  attr_reader :garage_bikes
  def initialize
    @garage_bikes = []
  end

  def deliver_bike(van)
    van.van_bikes.each do |bike|
      garage_bikes.push(bike)
    end
  end
end

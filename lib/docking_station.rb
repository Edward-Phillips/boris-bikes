require './lib/bike'

class DockingStation
  attr_accessor :storage

  def initialize
    @storage = []
  end

  def release_bike
    raise "no bikes available" if @storage.length == 0
    Bike.new
  end

  def dock_bike(bike)
    raise "docking station at capacity" if @storage.length >= 20
    @storage.push(bike)
  end
end

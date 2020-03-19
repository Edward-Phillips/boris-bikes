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

  def docker(bike)
    @storage.push(bike)
  end
end

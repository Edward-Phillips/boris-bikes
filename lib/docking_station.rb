require './lib/bike'

class DockingStation

  attr_reader :storage
  attr_writer :storage

  def initialize
    @storage = []
  end


  def release_bike
    Bike.new
  end

  def docker(bike)
    @storage.push(bike)
  end


end

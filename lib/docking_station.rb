require './lib/bike'

class DockingStation

  attr_reader :storage
  attr_writer :storage

  def initialize
    @storage = []
  end


  def release_bike
    if @storage.length > 0
      Bike.new
    else
      raise "no bikes available"
    end
  end

  def docker(bike)
    @storage.push(bike)
  end


end

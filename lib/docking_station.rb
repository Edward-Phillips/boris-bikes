require './lib/bike'

class DockingStation
  attr_accessor :storage
  DEFAULT_CAPACITY = 20
  def initialize
    @storage = []
  end

  private
    def full?
      @storage.length >= DEFAULT_CAPACITY
    end

    def empty?
      @storage.length == 0
    end
  public
    def release_bike
      raise "no bikes available" if empty?
      Bike.new
    end

    def dock_bike(bike)
      raise "docking station at capacity" if full?
      @storage.push(bike)
    end
end

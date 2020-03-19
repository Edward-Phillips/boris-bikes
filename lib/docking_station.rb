require './lib/bike'

class DockingStation
  attr_accessor :storage, :capacity
  DEFAULT_CAPACITY = 20
  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @storage = []
  end

  private
    def full?
      @storage.length >= DEFAULT_CAPACITY
    end

    def has_no_working_bikes?
      @storage.filter { |bike| bike.working }.empty?
    end

    def find_working_bike
      @storage.find { |bike| bike.working }
    end

    def retrieve_working_bike
      bike = find_working_bike
      @storage.delete(bike)
      bike
    end

  public
    def release_bike
      raise "no bikes available" if has_no_working_bikes?
      retrieve_working_bike
    end

    def dock_bike(bike)
      raise "docking station at capacity" if full?
      @storage.push(bike)
      bike.working ? nil : "This bike is broken"
    end
end

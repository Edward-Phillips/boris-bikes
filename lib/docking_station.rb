require './lib/bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def docker(bike)
    @dock.push(bike)
  end

def contents
end

end

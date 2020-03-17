

class Bike
  attr_reader :status
  attr_writer :status

  def initialize
    @check_in_status = false
  end

  def working?
    true
  end


end

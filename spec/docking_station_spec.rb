require 'docking_station'

describe DockingStation do
  subject(:NewDockingStation) { described_class.new}
    it { should respond_to :release_bike } 
end


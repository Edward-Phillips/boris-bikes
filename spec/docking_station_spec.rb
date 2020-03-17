require 'docking_station'

describe DockingStation do
  subject(:NewDockingStation) { described_class.new}
    it { should respond_to :release_bike } 

    it 'bike should respond to working?' do
      bike = subject.release_bike
      expect(bike).to be_working
    end
  
end


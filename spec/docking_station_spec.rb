require 'docking_station'

describe DockingStation do
#  subject(:NewDockingStation) { described_class.new}

    dock = DockingStation.new
    it { should respond_to :release_bike }
    bike = dock.release_bike
    it 'bike should respond to working?' do
      expect(bike).to be_working
    end

    dock.docker(bike)

    it{ expect(dock.storage).to include(bike)}

=begin
    it 'should be able to dock bikes.' do
      bike = subject.release_bike
      expect(subject.dock(bike)).to be
    end
=end

    it { is_expected.to respond_to(:docker).with(1).argument}
    it { is_expected.to have_attributes(:storage => be_an_instance_of(Array))}

end

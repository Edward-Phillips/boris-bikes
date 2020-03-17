require 'docking_station'

describe DockingStation do
  subject(:NewDockingStation) { described_class.new}
    it { should respond_to :release_bike }

    it 'bike should respond to working?' do
      bike = subject.release_bike
      expect(bike).to be_working
    end

=begin
    it 'should be able to dock bikes.' do
      bike = subject.release_bike
      expect(subject.dock(bike)).to be
    end
=end
    it { is_expected.to respond_to(:docker).with(1).argument}
    it { is_expected.to respond_to(:contents)}


end

require "dockingstation"

describe  DockingStation do
    subject(:docking_station) { described_class.new }

    it 'initializes new docking station' do
      expect(docking_station).to_not eq nil
    end
end

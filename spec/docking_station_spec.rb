require 'docking_station'

describe DockingStation do

    it "docking station should not release a bike when there are none stored" do
      dock = DockingStation.new
      expect{ dock.release_bike }.to raise_error "no bikes available"
    end

    it { should respond_to :release_bike }

    dock = DockingStation.new
    bike = Bike.new

    it 'bike should respond to working?' do
      expect(bike).to be_working
    end

    dock.dock_bike(bike)

    it{ expect(dock.storage).to include(bike)}
    it { is_expected.to respond_to(:dock_bike).with(1).argument}
    it { is_expected.to have_attributes(:storage => be_an_instance_of(Array))}

    it "should not dock  a bike when full" do
      19.times do
        dock.dock_bike(Bike.new)
      end
      expect{dock.dock_bike(bike)}.to raise_error "docking station at capacity"
    end
end

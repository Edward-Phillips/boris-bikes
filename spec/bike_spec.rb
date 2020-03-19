require 'bike'

describe Bike do
  subject(:NewBike) { described_class.new }
  it { should respond_to :working }
end


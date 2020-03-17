require 'bike'

describe Bike do
  subject(:NewBike) { described_class.new}
    it { should respond_to :working? }



    it { is_expected.to have_attributes(:check_in_status => be_in[true, false])}
  end

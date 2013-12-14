require 'rspec'

require_relative '../lib/cell'

describe Cell do

  before(:each) do
    @cell = Cell.new
  end

  context 'should respond to' do
    [:overpopulated?, :underpopulated?, :resurrected?, :surviving?, :add_neighbor].each do |m|
      it m do
        @cell.should respond_to(m)
      end
    end
  end

  it 'adds neighbor' do
    @cell.add_neighbor(Cell.new)
    @cell.add_neighbor(Cell.new)
    @cell.neighbors.count.should be(2)
  end

end
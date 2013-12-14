require 'rspec'

require_relative '../lib/god'
require_relative '../lib/universe'

describe God do

  before(:each) do
    @god = God.new(Universe.new(10,10))
  end

  context 'should respond to seed' do
    [:seed, :universe].each do |m|
      it m do
        @god.should respond_to(m)
      end
    end
  end

  it 'seed random cells in universe' do
    w = @god.universe.w
    h = @god.universe.h
    count = w * h * 0.1

    @god.seed
    @god.universe.cells.count.should be(count)

  end




end
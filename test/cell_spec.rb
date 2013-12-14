require 'rspec'

require_relative '../lib/cell'

describe Cell do

  before(:each) do
    @cell = Cell.new
  end

  context 'should respond to' do
    [:overpopulated?, :underpopulated?, :resurrected?, :surviving?].each do |m|
      it m do
        @cell.should respond_to(m)
      end
    end
  end

end
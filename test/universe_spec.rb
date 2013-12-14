require 'rspec'

require_relative '../lib/universe'

describe Universe do

  before(:each) do
    @universe = Universe.new
  end

  context 'responds to cells' do
    [:cells].each do |m|
      it m do
        @universe.should respond_to(m)
      end
    end
  end


end
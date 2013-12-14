require 'rspec'

require_relative '../lib/god'

describe God do

  before(:each) do
    @god = God.new
  end

  context 'should respond to seed' do
    [:seed].each do |m|
      it m do
        @god.should respond_to(m)
      end
    end

  end

end
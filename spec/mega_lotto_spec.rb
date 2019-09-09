require 'spec_helper'

RSpec.describe MegaLotto do
  describe "configure" do
    before(:each) do
      MegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    let(:draw) do
      MegaLotto::Drawing.new.draw
    end

    it "returns an array with 10 elements" do
      expect(draw).to be_an Array
      expect(draw.size).to eq 10
    end

    after(:each) do
      MegaLotto.reset
    end
  end
end

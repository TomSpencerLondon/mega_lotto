require "spec_helper"
require "mega_lotto/helper"

class FakeView
  include MegaLotto::Helper
end

RSpec.describe FakeView do
  context "#mega_lotto_drawing" do
    let(:drawing) do
      double('drawing')
    end

    before do
      allow(MegaLotto::Drawing)
        .to receive(:new)
        .and_return(drawing)
    end

    it "delegates to MegaLotto::Drawing#draw" do
      expect(drawing).to receive(:draw)
      FakeView.new.mega_lotto_drawing
    end
  end
end
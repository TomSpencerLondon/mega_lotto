require "spec_helper"

module MegaLotto
  RSpec.describe Configuration do
    let(:config) do
      Configuration.new
    end

    context "#drawing_count" do
      it "the default is 6" do
        expect(config.drawing_count)
          .to eq 6
      end
    end

    context "#drawing_count=" do
      it "can set value" do
        config.drawing_count = 6
        expect(config.drawing_count)
          .to eq 6
      end
    end
  end
end
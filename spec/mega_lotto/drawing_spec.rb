require "spec_helper"

module MegaLotto
  RSpec.describe Drawing do
    context "#draw" do
      let(:drawing) do
        described_class.new.draw
      end

      it "returns an Array" do
        expect(drawing).to be_a Array
      end

      it "returns an Array with 6 elements" do
        expect(drawing.size).to eq 6
      end

      it "each element is an Integer" do
        drawing.each do |item|
          expect(item).to be_a Integer
        end
      end

      it "each element is less than 60" do
        drawing.each do |item|
          expect(item).to be < 60
        end
      end
    end
  end
end

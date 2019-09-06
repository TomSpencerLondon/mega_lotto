module MegaLotto
  class Drawing
    def draw
      5.times.map do
        single_draw
      end
    end

    private

    def single_draw
      rand(0...60)
    end
  end
end
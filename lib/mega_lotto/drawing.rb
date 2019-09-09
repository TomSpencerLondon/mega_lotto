module MegaLotto
  class Drawing
    def draw
      MegaLotto.configuration.drawing_count.times.map do
        single_draw
      end
    end

    private

    def single_draw
      rand(0...60)
    end
  end
end
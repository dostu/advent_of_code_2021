class SlidingDepthIncreaseCalculator
  attr_reader :depths

  WINDOW_SIZE = 3

  def initialize(depths)
    @depths = depths
  end

  def run
    sliding_depths = depths.each_cons(3).map(&:sum)
    sliding_depths.each_cons(2).count { |a, b| a < b }
  end
end

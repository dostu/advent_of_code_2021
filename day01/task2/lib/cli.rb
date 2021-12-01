require_relative 'sliding_depth_increase_calculator'

depths = File.readlines(ARGV[0]).map(&:to_i)
puts SlidingDepthIncreaseCalculator.new(depths).run

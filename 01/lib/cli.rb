require_relative 'depth_increase_calculator'

depths = File.readlines(ARGV[0]).map(&:to_i)
puts DepthIncreaseCalculator.new(depths).run

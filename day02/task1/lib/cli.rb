require_relative 'position_calculator'

commands = File.readlines(ARGV[0]).map do |line|
  direction_string, units_string = line.split(' ')
  PositionCalculator::Command.new(direction_string.to_sym, units_string.to_i)
end

puts PositionCalculator.new(commands).run

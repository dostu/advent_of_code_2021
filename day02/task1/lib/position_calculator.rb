class PositionCalculator
  attr_reader :commands

  Command = Struct.new(:direction, :units)

  def initialize(commands)
    @commands = commands
  end

  def run
    horizontal_position * verical_position
  end

  private

  def horizontal_position
    commands_for_direction(:forward).sum(&:units)
  end

  def verical_position
    commands_for_direction(:down).sum(&:units) - commands_for_direction(:up).sum(&:units)
  end

  def commands_for_direction(direction)
    commands.select { |command| command.direction == direction }
  end
end

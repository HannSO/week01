require './lib/docking_station.rb'
require './lib/bike.rb'


class Van

  attr_reader :to_fix

  def dock_bikes_to_fix(broken_bikes)
    @to_fix = []
    @to_fix.push(broken_bikes)
  end

  def release
    to_fix.pop(to_fix.length)
  end

end

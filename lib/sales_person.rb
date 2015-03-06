class SalesPerson
  attr_reader :cities

  def initialize
    @cities = []
  end

  def schedule_city(city)
    @cities << city unless @cities.include?(city)
  end

  def route
    RouteCalculator.calculate(cities)
  end
end

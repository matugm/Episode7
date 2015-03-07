class RouteCalculator
  def self.calculate(points)
    remaining_points = points
    route = []
    route << remaining_points.shift

    until remaining_points.empty? do
      next_point = shortest_distance(route.last, remaining_points)
      route << remaining_points.delete(next_point)
    end

    route
  end

  def self.shortest_distance(from, possible)
    possible.min_by { |point| Map.distance_between(from, point) }
  end
end

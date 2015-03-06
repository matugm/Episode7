class RouteCalculator
  def self.calculate(points)
    remaining_points = points
    route = []
    route << remaining_points.shift

    while remaining_points.any? do
      next_point = shortest_distance(route.last, remaining_points)
      next_index = remaining_points.index(next_point)
      route << remaining_points.delete_at(next_index)
    end

    route
  end

  def self.shortest_distance(from, possible)
    possible.min_by { |point| Map.distance_between(from, point) }
  end
end

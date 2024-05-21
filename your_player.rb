require_relative 'base_player'

class YourPlayer < BasePlayer
  def initialize
    super
    @visited = {}
    @current_position = {row: 0, col: 0}
  end

  def next_point(grid)
    @visited[@current_position] = true
    
    neighbors = grid.edges[@current_position]

    next_position = neighbors.keys.find { |point| !@visited[point] }
    
    unless next_position
      unvisited = grid.edges.keys - @visited.keys
      next_position = unvisited.sample unless unvisited.empty?
    end

    @current_position = next_position if next_position

    next_position || @current_position
  end
end

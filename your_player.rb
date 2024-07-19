require './base_player.rb'

class YourPlayer < BasePlayer
  def next_point(time:)
    move = {
      row: rand(0..grid.max_row),
      col: rand(0..grid.max_col)
    }

    move
  end

  def grid
    game.grid
  end
end

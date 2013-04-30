module Golr
  class GamePrinter

    def self.print(game, io = STDOUT)
      line_feed(io)
      print_game_state(game, io)
      line_feed(io)
    end

    private
    def self.line_feed(io)
      printf(io, "\n")
    end

    def self.print_game_state(game, io)
      (1..game.rows).to_a.each do |y|
        printf(io, '|')
        (1..game.columns).to_a.each do |x|
          printf(io, game.grid[Key.key(x,y)] == true ? 'o' : ' ')
        end
        printf(io, '|')
        line_feed(io)
      end
    end
  end
end

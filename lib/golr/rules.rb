module Golr
  class Rules
    def evaluate(living_neighbors, cell_alive = false)
      return true if living_neighbors == 3
      cell_alive && living_neighbors == 2      
    end
  end
end

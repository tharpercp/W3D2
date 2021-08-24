require "card.rb"

class Board 
    def initialize(n=4)
        @secret_grid = Array.new(n) {Array.new(n)}
        @size = n
        populate
    end
    def populate
        alpha = ('A'..'Z').to_a
        arr = alpha.sample(@size*2)
        arr2 = arr * 2 
        arr2.shuffle! 
        @secret_grid.each_with_index do |subarr, i1|
            subarr.each_with_index do |card, i2|
                @secret_grid[i1][i2] = arr2.pop
                Card.new(@secret_grid[i1][i2])
                arr2.shuffle!
            end
        end
    end

    # def [](position)
    #     row, col = position
    #     @secret_grid[row][col]
    # end

    # def []=(position, value)
    #     row, col = position
    #     @secret_grid[row][col] = value
    # end

    # def render
    #     temp = @secret_grid.map.with_index do |sub_arr, i1|
    #         sub_arr.map.with_index do |card, i2|
    #             if !card.hidden
    #                 Card.face_value
    #             else
    #                 "x"
    #             end
    #         end
    #     end
    #     temp
    # end
            
    #     # iterate through @grid, and print "" for @hidden, letter for !@hidden


    # def won?
    #     @secret_grid.each do |sub_arr|
    #         sub_arr.each do |card|
    #             if card.check
    #                 return false
    #             end
    #         end
    #     end
    #     true
    # end

    # def reveal(guessed_pos)
    #     row, col = guessed_pos
    #     if @secret_grid[row][col].check
    #         @secret_grid[row][col].reveal
    #     end
    # end

    # def hide(position)
    #     row, col = position
    #     @secret_grid[row][col].hide
    # end

end






class Game

    def initialize
        Board.new
    end
        #get a size of board

        #They tell us to make a "reveal" function, but reveal is just a boolean 

    def get_input
        Board.render
        puts "Please enter a position of the card you would like to flip [ex: 2, 3]"
        position = chompy
        Board.reveal(position)
        Board.render
        #reveal card at this position from the Board
        puts "Enter another position to see if we can find a match"
        position2 = chompy
        Board.reveal(position2)
        Board.render
        if !match?(position, position2)     #do the two guesses match? If so, leave revealed, else hide. 
            Board.hide(position)
            Board.hide(position2)
            Board.render
            get_input
        else
            if Board.won?
                p "You win!"
            else
                Board.render
                get_input
            end
        end
    end

    def chompy
        input = gets.chomp
        position = input.split(", ").map { |ele| ele.to_i }
    end

    def match?(position1, position2)
        Board.position1 == Board.position2
    end
end

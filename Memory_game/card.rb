require_relative "board"


class Card 
    def initialize(face_value, hidden=true)
        @face_value = face_value
        @hidden = hidden 
    end
    def hide 
        @hidden = true
    end
    def reveal 
        @hidden = false
    end

    def check
        @hidden
    end

    def to_s(input)
        unless @hidden
            face_value.to_s
        end
    end
    def ==(guess)
        guess == @face_value
    end
    


            

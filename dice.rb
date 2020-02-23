class Die
    def initialize
        roll
    end

    def roll
        @rolled_number = 1 + rand(6)
    end

    def showing
        @rolled_number
    end

    def cheat number
        if number.to_i > 0 and number <= 6
            @rolled_number = number
        end
    end
end

puts Die.new.showing
puts Die.new.showing
puts
puts (Die.new.cheat 5)
die1 = Die.new
puts die1
die1.cheat 6
puts die1.showing
die2 = Die.new
die2.cheat 10
puts die2.showing
die3 = Die.new
puts die3.showing
die3.cheat "hey"
puts die3.showing
@die_new = Die.new
@die_new.showing = 4
puts @die_new.showing
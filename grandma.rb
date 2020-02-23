year = 1930
bye_count = 0
question = gets.chomp
while (bye_count < 3)
    if (question == "BYE")
        puts "*Grandma doesn\'t appear to have heard you"
        bye_count += 1
        if (bye_count < 3)
            question = gets.chomp
        end
    elsif (question != question.upcase)
        puts "HUH?! SPEAK UP, HONEY!!"
        bye_count = 0
        question = gets.chomp
    elsif ()
    else
        puts "NO, NOT SINCE #{year + rand(21)}"
        bye_count = 0
        question = gets.chomp
    end
end
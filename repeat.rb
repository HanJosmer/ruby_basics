words = []
word = gets.chomp

while (word != "".chomp)
    words.push(word)
    word = gets.chomp
end

puts words.sort
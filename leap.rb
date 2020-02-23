start_year = gets.chomp.to_i
end_year = gets.chomp.to_i + 1
puts ""

(end_year - start_year).times do |i|
    year = start_year + i
    if (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0))
        puts year
    end
end
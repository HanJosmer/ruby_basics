def english_number number

    number_english = ""
    
    ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    tens = ["ten", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    teenagers = ["eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

    left = number
    write = left / 1000
    left = left - (write * 1000)

    if write > 0
        thousands = english_number write
        number_english += thousands + " thousand "
    end

    write = left/100
    left = left - (write * 100)

    if write > 0
        hundreds = english_number write
        number_english += hundreds + " hundred "
    end

    write = left/10
    left = left - (write * 10)

    if write > 0
        if write == 1 and left > 0
            number_english += teenagers[left -1]
            left = 0
        else
            number_english += tens[write -1]
        end
    end

    if write > 0 and left > 0
        number_english += "-"
    end

    write = left
    left = 0

    if write > 0
        number_english += ones[write - 1]
    end

    number_english
end

puts english_number 22
puts english_number 14
puts english_number 10
puts english_number 100
puts english_number 58
puts english_number 150
puts english_number 534
puts english_number 999
puts english_number 3
puts english_number 1000
puts english_number 9576
puts english_number 10000
puts english_number 500500
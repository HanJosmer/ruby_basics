fibonacci = [1, 2]
$even_numbers = Array.new

# buildfibonacci array up to 4 million

def build_fibonacci fibonacci
    while fibonacci[-1] <= 4000000
        fibonacci << fibonacci[-2] + fibonacci[-1]
    end
end

# build array of even numbers

def find_even_numbers array
    array.each do |number|
        $even_numbers << number if number.even?
    end
end

build_fibonacci fibonacci
# puts fibonacci.length

find_even_numbers fibonacci
# puts $even_numbers

sum = 0
$even_numbers.each do |number|
    sum += number
end

puts sum
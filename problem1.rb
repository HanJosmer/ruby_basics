$multiples_of_three = []
$multiples_of_five = []
$multiples_of_three_and_five = []
$sum_threes = 0
$sum_fives = 0
$sum_both = 0
$sum_total = 0

def multiples_of_three
    1000.times do |i|
        $multiples_of_three << i if (i % 3) == 0
    end
end

def multiples_of_five
    1000.times do |i|
        $multiples_of_five << i if (i % 5) == 0
    end
end

multiples_of_three
multiples_of_five


$multiples_of_five.each do |i|
    $multiples_of_three_and_five << i if $multiples_of_three.include? i
end

$multiples_of_three.each do |i|
    $sum_threes += i
end

$multiples_of_five.each do |i|
    $sum_fives += i
end

$multiples_of_three_and_five.each do |i|
    $sum_both += i
end

puts $sum_threes + $sum_fives - $sum_both
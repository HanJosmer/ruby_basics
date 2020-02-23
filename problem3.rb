big_number = 600851475143
$factors = []
$prime_factors = []

def factor_product number
    factors = []
    root = Math.sqrt(number).to_i
    root.times do |i|
        if i > 0 && number % i == 0
            factors << i
            factors << number / i
        end
    end
    factors
end

$factors = factor_product big_number

$factors.each do |factor|
    factors = factor_product factor
    $prime_factors << factors[1] if factors.length == 2
end

puts $prime_factors[-1]
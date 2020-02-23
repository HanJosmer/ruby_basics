def do_for_every_hour &proc
    hours = (Time.now.hour % 12).to_i
    hours.times do
        proc.call
    end
end

def do_rand_times &proc
    rand(6).times do
        proc.call
    end
end

do_for_every_hour do 
    puts "Dong!"
end

# do_rand_times do
#     puts i
# end

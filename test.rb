array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

odd_numbers = array.select {|num| num % 2 != 0}

odd_numbers[4] = "swaggzilla"

puts odd_numbers
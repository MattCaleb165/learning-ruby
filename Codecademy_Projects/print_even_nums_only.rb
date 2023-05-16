my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def even_loop(array)
  array.each do |i|
    puts i if i % 2 == 0
  end
end

even_loop(my_array)
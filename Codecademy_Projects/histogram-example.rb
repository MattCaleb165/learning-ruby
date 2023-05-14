puts "Give me a paragraph to parse: "
text = gets.chomp

words = text.split

frequencies = Hash.new(0)

words.each do |word|
  frequencies[word] +=1
end

frequencies = frequencies.sort_by do |word, occur|
  occur
end

frequencies.reverse!

frequencies.each do |word, occur|
  puts word + " " + occur.to_s
end
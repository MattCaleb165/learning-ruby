def alphabetize(arr, rev=false)
  arr.sort!
  if (rev == true)
    arr.reverse!
  else
    return arr
  end
end

numbers = (1..10).to_a

puts alphabetize(numbers)
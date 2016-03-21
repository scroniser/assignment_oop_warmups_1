def my_reverse(word)
  letter_array = []
  word.split("").each do |letter|
    letter_array.unshift(letter)
  end
  letter_array.join
end

puts my_reverse("Blah!")
#=> !halB
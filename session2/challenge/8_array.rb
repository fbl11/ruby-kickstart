# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  # array.each.with_index do |element, index|
  #   if element == array[index + 1] && element == array[index + 2]
  #     return true
  #   end
  # end
  # false

  # array.each_cons(3) do |triplet|
  #   next if triplet[0] != triplet[1]
  #   return true if triplet[0] == triplet[2]
  # end

  array.each_cons(3) do |triplet|
    # triplet.uniq.length == 1 ? (return true) : next
    return true if triplet.uniq.length == 1
  end
  false
end

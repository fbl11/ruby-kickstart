# Write a method named prime_chars? which takes array of strings
# and returns true if the sum of the characters is prime.
#
# Remember that a number is prime if the only integers that can divide it with no remainder are 1 and itself.
#
# Examples of length three
# prime_chars? ['abc']            # => true
# prime_chars? ['a', 'bc']        # => true
# prime_chars? ['ab', 'c']        # => true
# prime_chars? ['a', 'b', 'c']    # => true
#
# Examples of length four
# prime_chars? ['abcd']           # => false
# prime_chars? ['ab', 'cd']       # => false
# prime_chars? ['a', 'bcd']       # => false
# prime_chars? ['a', 'b', 'cd']   # => false

def prime_chars?(array)
  char_count = array.map(&:length).sum

  return false if [0, 1].include? char_count # if char_count == 0 || char_count == 1

  root = Math.sqrt(char_count)

  (2..root).each do |number|
    return false if char_count % number == 0
  end
  true

  # counter = 2
  # while counter <= root do
  #   if char_count % counter == 0
  #     return false
  #   end
  #   counter += 1
  # end
  # true


end

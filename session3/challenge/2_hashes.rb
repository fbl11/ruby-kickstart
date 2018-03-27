# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}

def staircase(int)
  return "Error" if int <= 0
  # odds = (1..int).step(2).to_a
  # evens = (2..int).step(2).to_a

  (1..int).step(2).inject({}) { |hash, oddnumber| hash.merge({oddnumber => (2..oddnumber).step(2).to_a}) }
  #
  # odds.each do |oddnumber|
  #   # hash[oddnumber] = evens.select { |evennumber| evennumber < oddnumber }
  #   hash[oddnumber] = (2..oddnumber).step(2).to_a
  # end
  # hash
end

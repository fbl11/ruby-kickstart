# You'll get a string and a boolean.
# When the boolean is true, return a new string containing all the odd characters.
# When the boolean is false, return a new string containing all the even characters.
#
# If you have no idea where to begin, remember to check out the cheatsheets for string and logic/control
#
# odds_and_evens("abcdefg",true)    # => "bdf"
# odds_and_evens("abcdefg",false)   # => "aceg"

def odds_and_evens(string, return_odds)
  # string.split('')
  #   .select.with_index { |letter, index| return_odds ? index.odd? : index.even? }
  #   .join('')
  #   # .select.with_index { |letter, index| return_odds ^ index.even? }
    # .join('')

    start = return_odds ? 1 : 0
    return_string = ''

    for position in (start..string.length-1).step(2) do
      return_string << string[position]
    end

    return_string

end

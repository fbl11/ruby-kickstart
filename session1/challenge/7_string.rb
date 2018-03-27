# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

# def pirates_say_arrrrrrrrr(string)
#   string.split('')
#     .select.with_index { |letter, index| index != 0 && (string[index - 1] == "r" || string[index - 1] == "R") }#{ |letter, index| index == 0 ? false : (string[index - 1] == "r" || string[index - 1] == "R") }
#     .join('')
# end

# def pirates_say_arrrrrrrrr(string)
#   string.split('').each_cons(2).map { |pair| pair[0] =~ /[Rr]/ ? pair[1] : nil }.join('')
# end

def pirates_say_arrrrrrrrr(string)
  pirate_string = ''
  string.each_char.with_index { |letter, index| pirate_string << letter if string[index - 1] == "R" || string[index - 1] == "r"  && index !=0 }
  pirate_string
end

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  @@unique_numbers = {
    0 => 'zero',
    1 => 'one',
    2 => 'two',
    3 => 'three',
    4 => 'four',
    5 => 'five',
    6 => 'six',
    7 => 'seven',
    8 => 'eight',
    9 => 'nine',
    10 => 'ten',
    11 => 'eleven',
    12 => 'twelve',
    13 => 'thirteen',
    14 => 'fourteen',
    15 => 'fifteen',
    16 => 'sixteen',
    17 => 'seventeen',
    18 => 'eighteen',
    19 => 'nineteen',
    20 => 'twenty',
    30 => 'thirty',
    40 => 'forty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
    100 => 'onehundred'
  }

  def initialize(bottles)
    @bottles = calc_bottles_count(bottles)
  end

  def print_song
    while @bottles > -1 do
      case @bottles
      when 2
        on_the_wall(@bottles)
        take_one_down(@bottles-1)
      when 1
        on_the_wall(@bottles)
        take_one_down(@bottles-1)
      when 0
        ""# puts 'No more bottles of beer on the wall, no more bottles of beer.  We\'ve taken them down and passed them around; now we\'re drunk and passed out!'
      else
        on_the_wall(@bottles)
        take_one_down(@bottles-1)
      end
      @bottles -= 1
    end
  end


  private

  def calc_bottles_count(bottles)
    # return 0 if bottles < 0
    # return 99 if bottles > 99
    # bottles
    case
    when bottles < 0 then 0
    when bottles > 99 then 99
    else bottles
    end
  end

  def on_the_wall(num)
    puts "#{english_number(num).capitalize} bottle#{plural_s(num)} of beer on the wall,\n#{english_number(num).capitalize} bottle#{plural_s(num)} of beer,"
  end

  def take_one_down(num)
    puts "Take one down, pass it around,\n#{english_number(num).capitalize} bottle#{plural_s(num)} of beer on the wall."
  end

  def plural_s(num)
    num == 1 ? '' : 's'
  end

  def english_number(num)
    if @@unique_numbers.has_key?(num)
      return @@unique_numbers[num]
    end

    single_digit = num % 10
    double_digit = num - single_digit

    "#{@@unique_numbers[double_digit]}-#{@@unique_numbers[single_digit]}"

  end

end

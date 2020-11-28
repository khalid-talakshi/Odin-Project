require 'pry'

class String 
 def letter?
    self =~ /[[:alpha:]]/
  end

  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end

def shift_letter(letter, shift)
  if letter.letter? and letter.is_upper?
    shift_val = letter.ord + shift
    unless shift_val < 90
      (shift_val - 26).chr
    else
      shift_val.chr
    end
  elsif letter.letter? and letter.is_lower?
    shift_val = letter.ord + shift
    unless shift_val < 122
      (shift_val - 26).chr
    else
    # binding.pry
    shift_val.chr
    end
  else
    letter
  end
end

def caesar_cipher(message, shift)
  message_array = message.split('')
  message_array.map!{|letter| shift_letter(letter, shift)}
  message_array.join
end

puts caesar_cipher("What a string!", 5)

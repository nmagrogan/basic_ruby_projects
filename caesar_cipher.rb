require 'pry'

def cipher(string,shift)
  string = string.split(//)
  lower_chars = ('a'..'z')
  upper_chars = ('A'..'Z')

  string.map! do |char|
    if lower_chars.include?(char)
      char.ord + shift%26 > 122 ? (char.ord + (shift%26)-26).chr : (char.ord + (shift%26)).chr
    elsif upper_chars.include?(char)
      char.ord + shift%26 > 90 ? (char.ord + (shift%26)-26).chr : (char.ord + (shift%26)).chr
    else
      char
    end

  end
  string.join
end


puts cipher("What a string!", 5)

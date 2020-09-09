require 'pry'

def cipher(string,shift)
  string = string.split(//)
  chars = ('a'..'z')

  string.map! do |char|
    if chars.include?(char.downcase)
      (char.ord + shift).chr
    else
      char
    end
  end
  string.join
end


puts cipher("a B c d", 1)

# def caesar_cipher(string, num)
#     cipher = ''
#     string.each_char {|c| puts c, '' }

#         # if ("a".."z").include? (char.downcase)
#         #     num.times {char = char.next}
#         #     cipher << char[-1]
#         # end
# end

def caesar_cipher(string, number)
    ascii = []
    ascii == string.chars.map { |c| ascii << c.ord }
    shifted = ascii.map { |c| c + number }
    shifted = shifted.map { |c| c.chr}.join
    p shifted
end


caesar_cipher("AZ", 3)
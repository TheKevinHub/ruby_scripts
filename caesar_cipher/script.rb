def caesar_cipher(string, shift = 1)
    # Make array of non-caps alphabet
    alphabet = Array('a'..'z')
    # Make hash of the non-caps part of the shifted string; original letter is key, shifted letter is value
    non_caps = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    # Same as before but with caps letters
    alphabet = Array('A'..'Z')
    caps = Hash[alphabet.zip(alphabet.rotate(shift))]
    
    # Merge both hashes
    encrypter = non_caps.merge(caps)
    
    # Fetch the value of string's character's shifted value and join the new array into one string
    string.chars.map { |c| encrypter.fetch(c, c) }.join
  end
  
p caesar_cipher("TestinG", 2)
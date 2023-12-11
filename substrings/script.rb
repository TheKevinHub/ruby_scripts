dictionary = [
    "below", "go", "down", "above", "how", "hello", "up",
    "it", "return", "us", "world", "i", "low", "high",
    "where", "test", "testing", "part", "dictionary",
    "forever", "program", "done", "sit", "stand", "play",
    "stop", "average", "going", "with", "are", "goodbye",
    "hey", "you", "should", "out", "soon", "doing"
]

def substrings(string, dictionary)
    # gsub! to remove special characters
    stringArray = string.gsub!(/[^0-9A-Za-z]/, ' ').downcase.split
    
    duplicates = []
    hash = {}

    stringArray.each do |element|
        isInDict = dictionary.include?(element)

        if isInDict
            if hash.key?(element)
                val = hash[element] + 1
                hash[element] = val
            else
                hash[element] = 1
            end
        end
    end

    p hash
end

substrings("Hey, how are you doing? Are we doing stuff later?", dictionary)
string = "e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e"

substring = string.downcase.split(/[^[[:word:]'-]]+/)

WORD_COUNT = Hash.new
for word in substring do
    if word.length == 0 || WORD_COUNT.include?(word)
        next
    else
        WORD_COUNT[word] = substring.count(word)
    end
end

topThreWord = WORD_COUNT.sort_by {|k, v| v}.to_h.keys.reverse
print topThreWord[0..2]

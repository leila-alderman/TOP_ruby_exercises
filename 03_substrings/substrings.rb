def count(words, dict)
    words = words.gsub(/\W /,"").downcase.split(" ")
    word_count = {}
    dict.each do |dict_word|
        words.each do |word|
            if word.include? dict_word 
                if word_count[dict_word]
                    word_count[dict_word] += 1
                else
                    word_count[dict_word] = 1
                end
            end
        end
    end
    return word_count
end
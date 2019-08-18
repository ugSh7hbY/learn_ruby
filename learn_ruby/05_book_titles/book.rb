class Book
    def title=(new_title)
        @title = new_title
    end

    def title
        words = @title.split(' ')
        conjs = ['a', 'an', 'the', 'but', 'and', 'in', 'of']
        cap_words = []
        words.length.times do |i|
            if conjs.index(words[i]) == nil || i == 0
                cap_word = words[i][0].upcase + words[i][1..words[i].length - 1]
            else
                cap_word = words[i]
            end
            cap_words.push(cap_word)
        end
        @title = cap_words.join(' ')
    end
end

#write your code here
def translate words
    vowels = ["a", "e", "i", "o", "u"]
    consonants = "B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, X, Z, QU"
    consonants = consonants.downcase.split(", ")
    words = words.split(" ")
    i = 0
    while i < words.length
        if vowels.include?(words[i][0])
            words[i] = words[i] + "ay"
        elsif consonants.include?(words[i][0])
            new_word = words[i].split("").rotate(1).join("")
            j = 1
            if words[i].slice(0,2) == "qu"
                new_word = new_word.split("").rotate(1).join("")
                j = j + 1
            end

            while j < words[i].length && consonants.include?(words[i][j])
                new_word = new_word.split("").rotate(1).join("")
                if words[i].slice(j,2) == "qu"
                    new_word = new_word.split("").rotate(1).join("")
                    j = j + 1
                end
                j = j + 1
            end

            words[i] = new_word + "ay"
        end
        i = i + 1
    end

    if words.length > 1
        words = words.join(" ")
    else
        words = words.join("")
    end
    words
end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

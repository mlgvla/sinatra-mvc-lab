class PigLatinizer

    def piglatinize(text)
        text.split(" ").map {|word| piglatinize_word(word)}.join(" ")

    end

    private

    def vowel?(char)
        char.match(/[aAeEiIoOuU]/)
    end

    def piglatinize_word(word)
        if vowel?(word[0])
            word + "way"
        else
            arr = word.split(/([aAeEiIoOuU].*)/)
            arr[1] + arr[0] + "ay"
        end
    end
end
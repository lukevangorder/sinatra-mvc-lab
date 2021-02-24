class PigLatinizer
    attr_accessor :phrase
    # def initialize(phrase)
    #     @phrase = phrase
    # end
    def piglatinize(phrase)
        @phrase = phrase
        broken_phrase = @phrase.split(" ")
        broken_phrase.map do |word|
            if ['a','e','i','o','u'].include?(word[0].downcase)
                word.concat("way")
                word
            else
                first_vowel = word.index(/([aeiou])/)-1
                modif = word[0..first_vowel]
                word.delete_prefix!(modif)
                word.concat(modif + "ay")
                word
            end
        end
        broken_phrase.join(" ")
    end
end
                
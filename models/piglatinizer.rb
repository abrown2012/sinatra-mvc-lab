class PigLatinizer

    def piglatinize(word)
        new_string = []
        word.split(/\W+/).each do |w|
            if ['spr', 'str'].include? w[0..2].downcase
                new_string << "#{w[3..-1]}#{w[0..2]}ay"
            elsif ['pl', 'th', 'pr', 'sp', 'tr','sk', 'St', 'wh'].include? w[0..1].downcase
                new_string << "#{w[2..-1]}#{w[0..1]}ay"
            elsif ['a', 'e', 'i', 'o', 'u'].include? w[0].downcase
              new_string << "#{w}way"
            else 
              new_string << "#{w[1..-1]}#{w[0]}ay"
            end
        end
        new_string.join(" ")
    end 
end 
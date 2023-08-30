require_relative 'narrative.rb'

class Game
    include Narrative
    attr_accessor :word

    def initialize
        self.word = generate_answer
        @tries = 10
    end

    def generate_answer
        dictionary = File.open('google-10000-english-no-swears.txt', 'r')
        words = []
        dictionary.each_line do |line|
            line = line.chomp
            if line.length <= 12 && line.length >= 5
                words.push(line)
            end
        end
        words.sample
        dictionary.close
    end


end
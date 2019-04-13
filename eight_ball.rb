
fortunes = [
    "Is is decidedly so",
    "Probably not", 
    "The answer is yes", 
    "Ask again later", 
    "Absolutely not", 
    "Emphatically yes"
]

class EightBall
    def initialize(fortunes)
        @fortunes = fortunes
    end

    def start
        puts "What is your name?"
        name = gets.chomp.strip
        get_fortune(name)
    end

    def ask_again(name)
        puts "Ask another question, #{name}? (Y/N)"
        answer = gets.chomp.strip

        if answer.upcase == "YES" || answer.upcase == "Y"
            get_fortune(name)
        elsif answer.upcase == ""
            puts "I'm sorry, I don't understand."
            get_fortune(name)
        else 
            puts "Goodbye and good luck, #{name}."
        end
    end

    def get_fortune(name)
        fortune = @fortunes.sample
        puts "Greetings #{name}! Ask me a question about your future:"
        question = gets.chomp.strip
        puts "The answer to your question '#{question}': #{@fortunes.sample}."
        ask_again(name)
    end
end

eightball = EightBall.new(fortunes)
eightball.start
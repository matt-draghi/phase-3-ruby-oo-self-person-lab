# your code goes here
require 'pry'
class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account =  25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(value)
        @bank_account = value
    end

    def happiness=(value)
        if value <=10 && value >=0
            @happiness = value
        elsif value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        end
    end

    def hygiene=(value)
        if value <=10 && value >=0
            @hygiene = value
        elsif value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def get_paid amount
        @bank_account += amount
        "all about the benjamins"
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        # binding.pry
        friend.happiness=(friend.happiness + 3 )
        # binding.pry
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        
        when "politics"
            self.happiness=(@happiness - 2)
            friend.happiness=(friend.happiness - 2)
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
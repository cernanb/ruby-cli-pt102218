require 'pry'

def start
    input = ''
    puts "Welcome to the people cli!!!"

    people = []
    while input != 'exit'
    
        puts "What would you like to do? "
        puts "add('a') | exit('exit') | print('p') | count('c') | sort('s') | find('f') | find by first letter ('l')"
        
        input = gets.chomp
        
        if input == 'a'
            puts "Please enter the name of the person you want to add"
            
            name = gets.chomp
            people << name.downcase
        elsif input == 'exit'
            puts 'Goodbye'
        elsif input == 'l'
            puts "Enter a letter and I will print all the people that start with that letter"

            letter = gets.chomp.downcase
            ret_true = people.select { |word| word.start_with?(letter)}
            print_people(ret_true)
        elsif input == 'c'
            if people.length == 1
                puts "There is 1 person in the array"
            else 
                puts "There are #{people.length} people in the array."
            end 
        elsif input == 'f'
            puts "Who are you looking for?"
            name = gets.chomp.downcase
            if people.include?(name)
                puts "Congratz! That person is here."
                puts "They are at #{people.find_index(name)}"
            else 
                puts "Sorry, he/she is not here :("
            end
        elsif input == 'p'
            puts "These are all the people:"
            print_people(people)
        elsif input == 's'
            puts "These are all the people sorted:"
            print_people(people.sort)
        else
            puts "Invalid choice"
        end
    end
    
end

def print_people(people)
    people.each.with_index(1) do |name, index|
        puts "#{index}. #{name.capitalize}"
    end
end

start
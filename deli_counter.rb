require 'pry'

def line(current_line)
    if current_line.length > 0
        position_person_list = ""
        current_line.each_with_index do |person, index|
            position_person_list << "#{index + 1}. #{person} "
        end
        puts "The line is currently: #{position_person_list}".strip
    else
        puts "The line is currently empty."
    end
end

def take_a_number(current_line, person)
    current_line.push(person)
    position = current_line.index(person) + 1
    puts "Welcome, #{person}. You are number #{position} in line."
end

def now_serving(current_line)
    if current_line.length == 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{current_line[0]}."
        current_line.shift
    end
end
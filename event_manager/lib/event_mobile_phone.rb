require "csv"

def clean_phone_numbers(telephone)
  if telephone.length < 10
    puts "The number is too short, sorry"
  elsif telephone.length > 11
    puts "The number is not correct, sorry"
  elsif telephone.length == 11
    telephone.to_s.chr do |d|
      if d == 1
        telephone = telephone[1..9]
      elsif d != 1
        puts "The number is incorrect, sorry"
      end
    end
  else
    telephone
  end
end

puts "EventManager initialized!"

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

contents.each do |row|
  name = row[:first_name]
  telephone = clean_phone_numbers(row[:homephone])

  puts "#{name}, #{telephone}"
end

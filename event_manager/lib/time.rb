require 'csv'

contents = CSV.open 'event_attendees.csv', headers: true, header_converters: :symbol
contents.each do |row|
  time = DateTime.strptime(row[1], "%m/%d/%y %H:%M")

  puts "#{ time.hour }"
end

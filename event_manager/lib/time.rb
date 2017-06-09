require 'csv'

class StripTime
  attr_accessor :hours

  def initialize
    @hours = []
  end

  def call
    get_hours_from_csv
    calcualte_hours
  end

  private
  def get_hours_from_csv
    CSV.foreach('event_attendees.csv', headers: true) do |row|
      hours << convert_date(row[1])
    end
  end

  def calcualte_hours
    hours.inject({}) do |total, hour|
      total[hour] ||= 0
      total[hour] += 1
      total
    end
  end

  def convert_date(csv_date)
    DateTime.strptime(csv_date, "%m/%d/%y %H:%M").hour
  end
end

processor = StripTime.new
puts "Most hours: #{processor.call} "

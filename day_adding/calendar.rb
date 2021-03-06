class Calendar
  DAYS_IN_MONTH = {
    1 => 31,
    2 => 28,
    3 => 31,
    4 => 30,
    5 => 31,
    6 => 30,
    7 => 31,
    8 => 31,
    9 => 30,
    10 => 31,
    11 => 30,
    12 => 31
  }

  def self.year_leap?(year)
    if (year % 400).zero?
      true
    elsif (year % 100).zero?
      false
    elsif (year % 4).zero?
      true
    else
      false
    end
  end

  def self.add_one_day(year, month, day)
    day_count = DAYS_IN_MONTH[month]

    if month == 12 && day == 31
      "#{year + 1}-1-1"
    elsif month == 2 && day == 28 && year_leap?(year)
      "#{year}-#{month}-#{day + 1}"
    elsif month == 2 && day == 29 && year_leap?(year)
        "#{year}-#{month + 1}-1"
    elsif day == day_count
      "#{year}-#{month + 1}-1"
    else
      "#{year}-#{month}-#{day + 1}"
    end
  end
end

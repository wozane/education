def year_leap?(year)
  if year % 400 == 0
    true
  elsif year % 100 == 0
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

def add_one_day(year, month, day)
  days_in_month = {
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

  if month == 12 && day == days_in_month[month]
    return "#{year+1}-1-1"
  elsif month == 2 && day == 28 && year_leap?(year)
    return "#{year}-#{month}-#{day+1}"
  elsif month == 2 && day == 29 && year_leap?(year)
    return "#{year}-#{month+1}-1"
  elsif day == days_in_month[month]
    return "#{year}-#{month+1}-1"
  else 
    return "#{year}-#{month}-#{day+1}"
  end
end

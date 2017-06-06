class ValidatePhoneNumber
  def self.validate(number)

    begin
      number.is_a?(String)
    rescue ArgumentError => e
      puts 'Invalid phone format'
    end

    case number.to_s.length
    when 10
      number
    when 11
      if number[0] == '1'
        number[1..-1]
      else
        'Invalid phone number'
      end
    else
      'Invalid phone number length'
    end
  end
end

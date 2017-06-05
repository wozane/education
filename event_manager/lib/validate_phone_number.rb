class ValidatePhoneNumber
  def call(number)
    return 'Invalid phone format' unless number.is_a?(String)

    case number.length
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

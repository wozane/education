class ValidatePhoneNumber
  def call(number)
    return "Invalid phone format" unless number.kind_of?(String)

    case number.length
    when 10
      number
    else
      "Invalid phone number length"
    end
  end
end
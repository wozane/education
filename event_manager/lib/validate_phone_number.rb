class ValidatePhoneNumber
  def self.validate!(number)
    raise ArgumentError.new('Invalid phone format') unless number.is_a?(String)
    raise ArgumentError.new('Invalid phone number length') if number.length < 10 || number.length > 11

    case number.to_s.length
    when 10
      number
    when 11
      raise ArgumentError.new('Invalid phone number') if number[0] != '1'
      number[1..-1]
    end
  end
end

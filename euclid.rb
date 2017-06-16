def gcd(a, b)
  a = a.abs
  b = b.abs

  if b.zero?
    return a
  else
    if a > b
      a -= b
      gcd(a, b)
    elsif a <= b
      b -= a
      gcd(a, b)
    end
  end
end

def gcd(a, b)
  a = a.abs
  b = b.abs

  while b != 0 do
    if a > b
      a -= b
    else a <= b
      b -= a
    end
  end
  return a
end

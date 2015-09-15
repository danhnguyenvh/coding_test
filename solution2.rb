def to_ipv4 number
  if !number.is_a? Numeric or number >= 0xffffffff or number <= 0
    raise(::ArgumentError, "Invalid")
  end
  ret = []
  4.times do 
    ret.unshift(number & 0xff)
    number >>= 8
  end
  ret.join('.')
end
puts to_ipv4 ("0") 
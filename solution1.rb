def is_well_formed_brackets str
  s = filter_brackets str
  while s.size != 0 && ( s.include?("()") || s.include?("{}") )
    s = s.gsub("()", "")
    s = s.gsub("{}", "")
  end
  if s.size == 0
    puts "True"
  else
    puts "False"
  end
end

def filter_brackets str
  len = str.size
  arr = str.split("")
  filter = ""
  i = 0
  while i < len do
    if arr[i] == '(' || arr[i] == ')' || arr[i] == '{' || arr[i] == '}'
      filter = filter + arr[i]
    end
    i = i + 1
  end
  return filter
end

puts is_well_formed_brackets "{(6-13}-5)*7"
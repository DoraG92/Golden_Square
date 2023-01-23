def say_hello(name)
  return "hello #{name}" # The bug was the brackets instead of curly ones
end

puts say_hello("Dora")
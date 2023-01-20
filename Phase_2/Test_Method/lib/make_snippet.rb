def make_snippet(string)
  words = string.split(" ")
  if words.length <= 5
    words.join(" ")
  else
    words.slice(0, 5).join(" ") + "..."
  end
  words.join(" ")
end
DICT = ["eu", "odeio", "cana", "com", "força"]

# "euodeiocana"
#    ^   ^
#    i   j
def dict_problem(text)
  i = 0
  j = 0

  # An array to keep track of the words found so far
  current_sentence = []

  while j < text.size
    found = false

    if dict?(text[i..j])
      current_sentence << text[i..j]
      found = true
      i = j + 1
    end

    j += 1
  end

  current_sentence
end

def dict?(text)
  DICT.include?(text)
end

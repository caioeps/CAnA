require "matrix"

# longest palindromic subsequence
def lps(string)
  n = string.size
  m = Matrix.build(n, n) do |row, col|
    if row == col
      1
    else
      "."
    end
  end

  for col in 1...n

    for i in 0...(n - col)
      j = i + col

      if string[j] == string[i] && col == 1
        m.send(:[]=, i, j, 1)
      elsif string[j] == string[i]
        m.send(:[]=, i, j, m[i + 1, j - 1] + 2)
      else
        m.send(:[]=, i, j, max(m[i, j - 1], m[i + 1, j]))
      end
    end

    puts "End of external loop ##{col}"
    puts ""
    puts "       #{string.each_char.to_a.join "  "}"
    puts "       #{(0...n).to_a.join "  "}"
    (0...n).each_with_index { |i, index| puts "#{m.row(i)} #{index}" }
    puts "+++++++++++++++++++++++++++++++++++++++++++++"
  end

  return m[0, n]
end

def max(*args)
  args.max
end


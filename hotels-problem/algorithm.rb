def min_complaints(hotels_distances_from_origin)
  a = hotels_distances_from_origin
  n = hotels_distances_from_origin.size

  s = []        # h[i] is the hotel choosen for day i
  travelled = 0 # Distance travelled so far

  i = 0 # Iterate over the hotels
  j = 0 # For keeping track of the solution

  while i < n - 1 do
    if complaints(a[i + 1] - travelled) > complaints(a[i] - travelled)
      s[j] = i
      travelled = a[i]
      j += 1
    end

    i += 1
  end

  s
end

def complaints(n)
  (200 - n)**2
end


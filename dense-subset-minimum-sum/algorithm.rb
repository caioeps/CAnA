ArrElem = Struct.new(:value, :index) do
  def <=>(other)
    value <=> other.value
  end

  def to_s
    "{#{value},#{index}}"
  end
end

Solution = Struct.new(:value, :index)

def min_dense_subset(a)
  n = a.size
  a = a.each_with_index.map { |x, i| ArrElem.new(x, i) }
  s = []

  i = 0

  while i <= n - 2
    min = min(a[i], a[i+1], a[i+2] || ArrElem.new(Float::INFINITY, nil))

    s << min unless s.include?(min)

    i += 1
  end

  s
end

def min(*args)
  args.min
end

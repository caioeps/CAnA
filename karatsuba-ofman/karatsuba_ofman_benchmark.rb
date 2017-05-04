require "csv"
require "benchmark"
require "./karatsuba_ofman"

include KaratsubaOfman

CSV.open("benchmark.csv", "w") do |csv|
  Benchmark.bm do |bm|
    (1..1000).each do |i|
      time = bm.report { multiplication((0..i).to_a.join.to_i, (0..i).to_a.join.to_i, i) }
      csv << [i, time.real]
    end
  end
end


require 'benchmark'
require_relative './binary_search'

test_list = (1..100_000_000).to_a

puts Benchmark.measure { binary_search(1, test_list) }


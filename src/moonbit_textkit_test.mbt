///|
test "sum" {
  debug_inspect(sum([1, 2, 3]), content="6")
}

///|
test "product" {
  debug_inspect(product([2, 3, 4]), content="24")
}

///|
test "min" {
  debug_inspect(min_value([3, 1, 2]), content="Some(1)")
}

///|
test "max" {
  debug_inspect(max_value([3, 1, 2]), content="Some(3)")
}

///|
test "mean" {
  debug_inspect(mean([2, 4]), content="Some(3)")
}

///|
test "gcd" {
  debug_inspect(gcd(18, 24), content="6")
}

///|
test "lcm" {
  debug_inspect(lcm(6, 8), content="24")
}

///|
test "prefix" {
  debug_inspect(prefix_sums([1, 2, 3]), content="[1, 3, 6]")
}

///|
test "diff" {
  debug_inspect(differences([4, 7, 3]), content="[3, -4]")
}

///|
test "sort" {
  debug_inspect(insertion_sort([3, 1, 2]), content="[1, 2, 3]")
}

///|
test "median" {
  debug_inspect(median([1, 3, 2]), content="Some(2)")
}

///|
test "prime" {
  debug_inspect(primes_up_to(10), content="[2, 3, 5, 7]")
}

///|
test "search" {
  debug_inspect(binary_search([1, 3, 5], 3), content="true")
}

///|
test "window sum" {
  debug_inspect(window_sum([1, 2, 3, 4], 3), content="[6, 9]")
}

///|
test "window range" {
  debug_inspect(window_range([1, 5, 3, 8], 2), content="[4, 2, 5]")
}

///|
test "window mean" {
  debug_inspect(window_mean([2, 4, 6, 8], 2), content="[3, 5, 7]")
}

///|
test "power sum" {
  debug_inspect(power_sum_2([1, 2, 3]), content="14")
}

///|
test "bucket counts" {
  debug_inspect(bucket_counts([0, 1, 2, 5, 9], 3, 4), content="[3, 1, 0, 1]")
}

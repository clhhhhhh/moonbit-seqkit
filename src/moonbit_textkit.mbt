///|
/// Sequence analytics primitives for MoonBit.
pub fn sum(values : Array[Int]) -> Int {
  let mut result = 0
  for value in values {
    result += value
  }
  result
}

///|
pub fn product(values : Array[Int]) -> Int {
  let mut result = 1
  for value in values {
    result *= value
  }
  result
}

///|
pub fn min_value(values : Array[Int]) -> Int? {
  if values.is_empty() {
    return None
  }
  let mut result = values[0]
  for value in values {
    if value < result {
      result = value
    }
  }
  Some(result)
}

///|
pub fn max_value(values : Array[Int]) -> Int? {
  if values.is_empty() {
    return None
  }
  let mut result = values[0]
  for value in values {
    if value > result {
      result = value
    }
  }
  Some(result)
}

///|
pub fn mean(values : Array[Int]) -> Double? {
  if values.is_empty() {
    return None
  }
  Some(sum(values).to_double() / values.length().to_double())
}

///|
pub fn clamp(value : Int, low : Int, high : Int) -> Int {
  if value < low {
    low
  } else if value > high {
    high
  } else {
    value
  }
}

///|
pub fn abs(value : Int) -> Int {
  if value < 0 {
    -value
  } else {
    value
  }
}

///|
pub fn gcd(left : Int, right : Int) -> Int {
  let mut a = abs(left)
  let mut b = abs(right)
  while b != 0 {
    let next = a % b
    a = b
    b = next
  }
  a
}

///|
pub fn lcm(left : Int, right : Int) -> Int {
  if left == 0 || right == 0 {
    0
  } else {
    abs(left / gcd(left, right) * right)
  }
}

///|
pub fn count_equal(values : Array[Int], expected : Int) -> Int {
  let mut count = 0
  for value in values {
    if value == expected {
      count += 1
    }
  }
  count
}

///|
pub fn count_greater(values : Array[Int], threshold : Int) -> Int {
  let mut count = 0
  for value in values {
    if value > threshold {
      count += 1
    }
  }
  count
}

///|
pub fn count_less(values : Array[Int], threshold : Int) -> Int {
  let mut count = 0
  for value in values {
    if value < threshold {
      count += 1
    }
  }
  count
}

///|
pub fn prefix_sums(values : Array[Int]) -> Array[Int] {
  let result = Array::make(values.length(), 0)
  let mut running = 0
  for index = 0; index < values.length(); index = index + 1 {
    running += values[index]
    result[index] = running
  }
  result
}

///|
pub fn differences(values : Array[Int]) -> Array[Int] {
  if values.length() < 2 {
    return []
  }
  let result = Array::make(values.length() - 1, 0)
  for index = 1; index < values.length(); index = index + 1 {
    result[index - 1] = values[index] - values[index - 1]
  }
  result
}

///|
pub fn dot(left : Array[Int], right : Array[Int]) -> Int {
  let size = if left.length() < right.length() {
    left.length()
  } else {
    right.length()
  }
  let mut result = 0
  for index = 0; index < size; index = index + 1 {
    result += left[index] * right[index]
  }
  result
}

///|
pub fn contains(values : Array[Int], expected : Int) -> Bool {
  for value in values {
    if value == expected {
      return true
    }
  }
  false
}

///|
pub fn all_greater(values : Array[Int], threshold : Int) -> Bool {
  for value in values {
    if value <= threshold {
      return false
    }
  }
  true
}

///|
pub fn any_greater(values : Array[Int], threshold : Int) -> Bool {
  for value in values {
    if value > threshold {
      return true
    }
  }
  false
}

///|
pub fn reverse(values : Array[Int]) -> Array[Int] {
  let result = Array::make(values.length(), 0)
  for index = 0; index < values.length(); index = index + 1 {
    result[values.length() - index - 1] = values[index]
  }
  result
}

///|
pub fn rotate_left(values : Array[Int], amount : Int) -> Array[Int] {
  if values.is_empty() {
    return []
  }
  let result = Array::make(values.length(), 0)
  let shift = (amount % values.length() + values.length()) % values.length()
  for index = 0; index < values.length(); index = index + 1 {
    result[index] = values[(index + shift) % values.length()]
  }
  result
}

///|
pub fn take(values : Array[Int], count : Int) -> Array[Int] {
  let size = clamp(count, 0, values.length())
  Array::from_iter(values[:size].iter())
}

///|
pub fn drop(values : Array[Int], count : Int) -> Array[Int] {
  let start = clamp(count, 0, values.length())
  Array::from_iter(values[start:].iter())
}

///|
pub fn zip_sum(left : Array[Int], right : Array[Int]) -> Array[Int] {
  let size = if left.length() < right.length() {
    left.length()
  } else {
    right.length()
  }
  let result = Array::make(size, 0)
  for index = 0; index < size; index = index + 1 {
    result[index] = left[index] + right[index]
  }
  result
}

///|
pub fn is_sorted(values : Array[Int]) -> Bool {
  for index = 1; index < values.length(); index = index + 1 {
    if values[index] < values[index - 1] {
      return false
    }
  }
  true
}

///|
pub fn lower_bound(values : Array[Int], target : Int) -> Int {
  let mut low = 0
  let mut high = values.length()
  while low < high {
    let middle = (low + high) / 2
    if values[middle] < target {
      low = middle + 1
    } else {
      high = middle
    }
  }
  low
}

///|
pub fn upper_bound(values : Array[Int], target : Int) -> Int {
  let mut low = 0
  let mut high = values.length()
  while low < high {
    let middle = (low + high) / 2
    if values[middle] <= target {
      low = middle + 1
    } else {
      high = middle
    }
  }
  low
}

///|
pub fn binary_search(values : Array[Int], target : Int) -> Bool {
  let index = lower_bound(values, target)
  index < values.length() && values[index] == target
}

///|
pub fn insertion_sort(values : Array[Int]) -> Array[Int] {
  let result = values.copy()
  for index = 1; index < result.length(); index = index + 1 {
    let current = result[index]
    let mut cursor = index
    while cursor > 0 && result[cursor - 1] > current {
      result[cursor] = result[cursor - 1]
      cursor -= 1
    }
    result[cursor] = current
  }
  result
}

///|
pub fn unique_sorted(values : Array[Int]) -> Array[Int] {
  let sorted = insertion_sort(values)
  if sorted.is_empty() {
    return []
  }
  let result = Array::make(sorted.length(), 0)
  let mut size = 1
  result[0] = sorted[0]
  for index = 1; index < sorted.length(); index = index + 1 {
    if sorted[index] != result[size - 1] {
      result[size] = sorted[index]
      size += 1
    }
  }
  Array::from_iter(result[:size].iter())
}

///|
pub fn median(values : Array[Int]) -> Double? {
  let sorted = insertion_sort(values)
  if sorted.is_empty() {
    return None
  }
  let middle = sorted.length() / 2
  if sorted.length() % 2 == 1 {
    Some(sorted[middle].to_double())
  } else {
    Some((sorted[middle - 1].to_double() + sorted[middle].to_double()) / 2.0)
  }
}

///|
pub fn range(values : Array[Int]) -> Int? {
  match (min_value(values), max_value(values)) {
    (Some(low), Some(high)) => Some(high - low)
    _ => None
  }
}

///|
pub fn variance(values : Array[Int]) -> Double? {
  guard mean(values) is Some(center) else { return None }
  let mut total = 0.0
  for value in values {
    let delta = value.to_double() - center
    total += delta * delta
  }
  Some(total / values.length().to_double())
}

///|
pub fn factorial(value : Int) -> Int {
  if value <= 1 {
    1
  } else {
    value * factorial(value - 1)
  }
}

///|
pub fn fibonacci(value : Int) -> Int {
  if value <= 0 {
    0
  } else if value == 1 {
    1
  } else {
    fibonacci(value - 1) + fibonacci(value - 2)
  }
}

///|
pub fn is_prime(value : Int) -> Bool {
  if value < 2 {
    return false
  }
  let mut divisor = 2
  while divisor * divisor <= value {
    if value % divisor == 0 {
      return false
    }
    divisor += 1
  }
  true
}

///|
pub fn primes_up_to(limit : Int) -> Array[Int] {
  let result = []
  for value = 2; value <= limit; value = value + 1 {
    if is_prime(value) {
      result.push(value)
    }
  }
  result
}

///|
pub fn power(base : Int, exponent : Int) -> Int {
  if exponent <= 0 {
    1
  } else {
    base * power(base, exponent - 1)
  }
}

///|
pub fn sum_squares(values : Array[Int]) -> Int {
  let mut result = 0
  for value in values {
    result += value * value
  }
  result
}

///|
pub fn manhattan(left : Array[Int], right : Array[Int]) -> Int {
  let size = if left.length() < right.length() {
    left.length()
  } else {
    right.length()
  }
  let mut result = abs(left.length() - right.length())
  for index = 0; index < size; index = index + 1 {
    result += abs(left[index] - right[index])
  }
  result
}

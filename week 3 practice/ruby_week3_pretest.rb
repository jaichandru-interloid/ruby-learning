# frozen_string_literal: false

# =============================================================================
#  Intermediate Ruby & OOP - Week 3 WARM-UP
#  ~60 minutes, 10 questions, 1 mark each.
#  Sit this before the main Week 3 assessment. Nothing here repeats that paper.
#
#  HOW TO USE
#  1. Fill in every TODO. Keep the method and class names exactly as given.
#  2. Run with:  ruby ruby_week3_pretest.rb
#  3. A failing question prints a red cross and keeps going - the run never
#     stops at the first failure. Your score is printed at the end.
#  4. Do NOT modify the test section.
#
#  RULES
#  - Your solution must work for ANY valid input, not just the test values.
#  - No built-in method that directly solves the question:
#      Q1-Q6 may use `each`, `<<`, indexing, `size`, `dup` and comparison
#      operators only - no other Enumerable methods, and never the method you
#      are asked to rebuild.
#  - Ruby 3.0+.
# =============================================================================

# ========================= 1) my_each_with_index =============================
# my_each_with_index(array) { |element, index| ... }
# - index starts at 0.
# - Returns the ORIGINAL array (the same object), not a new one.
def my_each_with_index(array)
  # TODO
  array.each_with_index do |element, index|
    yield(array[index], index)
  end
  array
end

# =============================== 2) my_find ==================================
# my_find(array) { |element| ... } -> the first element whose block is truthy
# - nil when nothing matches.
# - Must stop walking as soon as it finds one.
def my_find(array)
  # TODO
  array.each do |element, index|
    if yield(element)
      return element
    end
  end
  nil
end

# ============================== 3) my_count ==================================
# my_count(array)          -> how many elements there are
# my_count(array, target)  -> how many elements == target
# my_count(array) { ... }  -> how many elements the block says yes to
# Hint: a splat parameter is an easy way to tell "no argument" from "nil given".
def my_count(array, *target)
  # TODO
  count=0
  if block_given?
    array.each do |element|
      count += 1 if yield(element)
    end
    count

  elsif target.length != 0
    array.each do |element|
      count += 1 if element == target[0]
    end
    count

  else
    array.length
  end
end

# =============================== 4) my_sum ===================================
# my_sum(array, initial = 0) -> initial + every element, using +
# - Works for anything that responds to + (numbers, strings, arrays).
def my_sum(array, initial = 0)
  # TODO
    sum = initial
  array.each do |element|
    sum+=element
  end
  sum
end

# ============================= 5) my_flat_map ================================
# my_flat_map(array) { |element| ... } -> block results, flattened ONE level
# - An array result is spread out; anything else is appended as is.
def my_flat_map(array)
  # TODO
  result = []
  array.each do |element|
    value = yield(element)

    if value.is_a?(Array)
      value.each do |num|
        result << num
      end
    else
      result << value
    end
  end

  result
end

# =============================== 6) my_sort ==================================
# my_sort(array)                  -> ascending, comparing with <=>
# my_sort(array) { |a, b| ... }   -> the block returns -1 / 0 / 1
# - Write the sort yourself (insertion sort is fine). Must not mutate the input.
def my_sort(array)
  # TODO
  result = array.dup

  (1...result.length).each do |i|
    key = result[i]
    j = i - 1

    while j >= 0
      comparison = if block_given?
                    yield(key, result[j])
                  else
                    key <=> result[j]
                  end

      break if comparison >= 0

      result[j + 1] = result[j]
      j -= 1
    end

    result[j + 1] = key
  end

  result
end

# ============================ 7) TextCleaner =================================
# TextCleaner.new(text)
#   - #trim, #squeeze_spaces (runs of spaces -> one space), #downcase
#     each change the working text and RETURN SELF so they can be chained.
#   - #result (and #to_s) return the current text.
#   - The string handed to the constructor must never be mutated.
class TextCleaner
  # TODO
  def initialize(text)
    @text = text.dup
  end

  def trim
    @text = @text.strip
    self
  end

  def squeeze_spaces
    @text = @text.gsub(/ +/, " ")
    self
  end 

  def downcase
    @text = @text.downcase
    self
  end

  def result
    @text
  end

  def to_s
    @text
  end
end

# ============================ 8) Temperature =================================
# Temperature.new(celsius)
#   - #celsius readable AND writable.
#   - The writer raises ArgumentError below absolute zero (-273.15).
#   - #fahrenheit is computed: (celsius * 9 / 5) + 32
#   - #fahrenheit= writes back through celsius, so both stay in sync.
class Temperature
  # TODO
  attr_accessor :celsius
  def initialize (celsius)
    self.celsius = celsius
  end

  def celsius=(value)
    raise ArgumentError, "Below absolute zero" if value < 0
    @celsius = value
  end

  def fahrenheit
    (@celsius * 9 / 5) + 32
  end

  def fahrenheit=(value)
    self.celsius = (value - 32) * 5 / 9
  end

end

# =============================== 9) Player ===================================
# Player.new(name, power)
#   - #name is public.
#   - #power is PROTECTED: another Player may read it, outside code may not.
#   - #stronger_than?(other) compares the two players' power.
class Player
  # TODO
  attr_reader :name
  def initialize(name, power)
    @name = name
    @power = power
  end

  def stronger_than?(other)
    power > other.power
  end

  protected

  attr_reader :power

end

# ================= 10) Point (equality) + label_for (safe nav) ===============
# Point.new(x, y)
#   - #== is true for another Point with the same coordinates, false otherwise.
#   - #eql? matches #==, and #hash must agree, so Point works with uniq and
#     as a Hash key. Do NOT touch #equal? - identity is Ruby's job.
#   - #to_s -> "(1, 2)"
class Point
  # TODO
  attr_reader :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  # Value equality
  def ==(other)
    other.is_a?(Point) && x == other.x && y == other.y
  end

  # Hash equality
  def eql?(other)
    self == other
  end

  # Hash code
  def hash
    [x, y].hash
  end

  # String representation
  def to_s
    "(#{x}, #{y})"
  end
end

# label_for(record) -> record.owner.name upcased, or "UNKNOWN" if anything
# along the way is nil. Use safe navigation (&.) - no if / unless / rescue.
def label_for(record)
  # TODO
  record&.owner&.name&.upcase || "UNKNOWN"
end


# =============================================================================
#                                   TESTS
#                       (do not modify anything below)
# =============================================================================

class AssertionError < StandardError; end

$score = 0
$failures = []

def assert(condition, message)
  raise AssertionError, message unless condition
end

def assert_eq(actual, expected, message)
  return if actual == expected

  raise AssertionError,
        "#{message}\n     expected: #{expected.inspect}\n     got:      #{actual.inspect}"
end

def assert_raises(klass, message)
  begin
    yield
  rescue AssertionError
    raise
  rescue StandardError, ScriptError => e
    return e if e.is_a?(klass)

    raise AssertionError, "#{message} (expected #{klass}, got #{e.class}: #{e.message})"
  end
  raise AssertionError, "#{message} (expected #{klass}, but nothing was raised)"
end

def question(title)
  yield
  $score += 1
  puts "\u2705 #{title}"
rescue AssertionError => e
  $failures << title
  puts "\u274C #{title}\n     #{e.message}"
rescue StandardError, ScriptError => e
  $failures << title
  puts "\u274C #{title}\n     #{e.class}: #{e.message}"
end

puts "\nRunning tests...\n\n"

question("1) my_each_with_index") do
  source = %w[a b c]
  pairs = []
  returned = my_each_with_index(source) { |element, index| pairs << [element, index] }
  assert_eq(pairs, [["a", 0], ["b", 1], ["c", 2]], "yields element and index")
  assert(returned.equal?(source), "must return the ORIGINAL array, not a copy")
  assert_eq(my_each_with_index([]) { |_e, _i| }, [], "empty array")
end

question("2) my_find") do
  assert_eq(my_find([1, 2, 3, 4]) { |n| n.even? }, 2, "returns the first match")
  assert_eq(my_find([1, 3, 5]) { |n| n.even? }, nil, "nil when nothing matches")
  assert_eq(my_find([nil, false, 7]) { |v| v }, 7, "skips falsy elements")
  checked = 0
  my_find([1, 2, 3, 4]) { |n| checked += 1; n.even? }
  assert_eq(checked, 2, "must stop as soon as it finds a match")
end

question("3) my_count") do
  assert_eq(my_count([1, 2, 3]), 3, "no argument counts everything")
  assert_eq(my_count([]), 0, "empty array")
  assert_eq(my_count([1, 2, 2, 3], 2), 2, "an argument counts matches by ==")
  assert_eq(my_count(%w[a b a], "a"), 2, "works with strings")
  assert_eq(my_count([1, 2, 3, 4]) { |n| n.even? }, 2, "a block counts truthy results")
  assert_eq(my_count([1, 2, 3], 9), 0, "no matches")
end

question("4) my_sum") do
  assert_eq(my_sum([1, 2, 3]), 6, "sums numbers")
  assert_eq(my_sum([]), 0, "empty array is 0")
  assert_eq(my_sum([1, 2], 10), 13, "starts from the given value")
  assert_eq(my_sum(%w[a b], ""), "ab", "any type with a + works")
  assert_eq(my_sum([[1], [2]], []), [1, 2], "arrays concatenate")
  assert_eq(my_sum([1.5, 2.5]), 4.0, "floats")
end

question("5) my_flat_map") do
  assert_eq(my_flat_map([1, 2, 3]) { |n| [n, n * 10] }, [1, 10, 2, 20, 3, 30], "flattens block results")
  assert_eq(my_flat_map([1, 2]) { |n| n }, [1, 2], "non-array results are kept as is")
  assert_eq(my_flat_map([1]) { |_n| [[2, 3]] }, [[2, 3]], "only ONE level is flattened")
  assert_eq(my_flat_map([1, 2]) { |_n| [] }, [], "empty results disappear")
  assert_eq(my_flat_map([]) { |n| n }, [], "empty array")
end

question("6) my_sort") do
  assert_eq(my_sort([3, 1, 2]), [1, 2, 3], "no block means natural order via <=>")
  assert_eq(my_sort(%w[pear fig apple]), %w[apple fig pear], "works with strings")
  assert_eq(my_sort([3, 1, 2]) { |a, b| b <=> a }, [3, 2, 1], "the block decides the order")
  assert_eq(my_sort([]), [], "empty array")
  assert_eq(my_sort([9]), [9], "single element")
  source = [2, 1, 3]
  my_sort(source)
  assert_eq(source, [2, 1, 3], "must not mutate the input")
end

question("7) TextCleaner (method chaining)") do
  cleaner = TextCleaner.new("  Hello   World  ")
  assert(cleaner.trim.equal?(cleaner), "every step must return self")
  assert_eq(TextCleaner.new("  Hello   World  ").trim.squeeze_spaces.downcase.result,
            "hello world", "the whole chain")
  assert_eq(TextCleaner.new("Ruby").result, "Ruby", "no steps applied")
  assert_eq(TextCleaner.new("  A  B ").squeeze_spaces.trim.result, "A B", "order does not matter here")
  original = "  Hi  "
  TextCleaner.new(original).trim.downcase
  assert_eq(original, "  Hi  ", "must not mutate the string it was handed")
end

question("8) Temperature (attr_accessor / attr_writer)") do
  temp = Temperature.new(25)
  assert_eq(temp.celsius, 25, "reads celsius")
  assert_eq(temp.fahrenheit, 77.0, "converts to fahrenheit")
  temp.celsius = 30
  assert_eq(temp.fahrenheit, 86.0, "the conversion follows the write")
  temp.fahrenheit = 212
  assert_eq(temp.celsius, 100.0, "writing fahrenheit updates celsius")
  assert_raises(ArgumentError, "below absolute zero must be rejected") { temp.celsius = -300 }
  assert_eq(temp.celsius, 100.0, "a rejected write leaves the value alone")
  assert(temp.respond_to?(:celsius=), "celsius is writable")
  assert(temp.respond_to?(:fahrenheit=), "fahrenheit is writable")
end

question("9) Player (protected methods)") do
  strong = Player.new("Ada", 10)
  weak   = Player.new("Bob", 7)

  assert_eq(strong.name, "Ada", "name is public")
  assert_eq(strong.stronger_than?(weak), true, "compares against another player")
  assert_eq(weak.stronger_than?(strong), false, "and the other way round")
  assert_eq(strong.stronger_than?(Player.new("Cy", 10)), false, "a tie is not stronger")
  assert_eq(strong.respond_to?(:power), false, "power must be protected, not public")
  assert_eq(strong.respond_to?(:power, true), true, "power must still exist")
  assert_raises(NoMethodError, "outsiders cannot read power") { strong.power }
end

question("10) Point (equality operators) + label_for (safe navigation)") do
  a = Point.new(1, 2)
  b = Point.new(1, 2)
  c = Point.new(3, 4)

  assert_eq(a == b, true, "== compares values")
  assert_eq(a == c, false, "different values")
  assert_eq(a == "1,2", false, "a different type is never equal")
  assert_eq(a.equal?(b), false, "equal? is identity, do not override it")
  assert_eq(a.equal?(a), true, "an object is identical to itself")
  assert_eq(a.eql?(b), true, "eql? matches ==")
  assert_eq(a.hash == b.hash, true, "equal objects must share a hash")
  assert_eq([a, b, c].uniq.size, 2, "uniq relies on eql? + hash")
  assert_eq({ a => "here" }[b], "here", "works as a Hash key")
  assert_eq(a.to_s, "(1, 2)", "to_s")

  person = Struct.new(:name).new("siva")
  record = Struct.new(:owner).new(person)

  assert_eq(label_for(record), "SIVA", "walks the whole chain")
  assert_eq(label_for(nil), "UNKNOWN", "nil record")
  assert_eq(label_for(Struct.new(:owner).new(nil)), "UNKNOWN", "nil owner")
  assert_eq(label_for(Struct.new(:owner).new(Struct.new(:name).new(nil))), "UNKNOWN", "nil name")
end

puts "\n" + ("-" * 62)
puts "SCORE: #{$score} / 10"
if $failures.empty?
  puts "All tests passed."
else
  puts "Still failing: #{$failures.join(', ')}"
end
puts ("-" * 62) + "\n\n"

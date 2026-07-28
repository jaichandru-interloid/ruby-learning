# Ruby Programming Assessment – Week 3 (Set A)

## Duration
**2 Hours (120 Minutes)**

## Total Questions
**20**

## General Rules

1. Complete all the questions.
2. Use only the concepts covered in Week 3 (PPT 3).
3. Do NOT use AI tools or the Internet.
4. Do NOT discuss the questions with others.
5. Write clean and readable Ruby code.
6. **This week the rule is reversed.** Week 3 is about Ruby's built-in Enumerable methods, so you MUST use them. Do NOT solve these with manual `while` loops and counter variables.
7. Prefer method chaining over creating many temporary variables.
8. Where a question names a concept (a Proc, a private method, `super`, `prepend`), your answer only counts if you actually use it.

---

# Q1. Squares of Even Numbers

**Difficulty:** Easy

## Problem Statement

From the given array, take only the even numbers and give back their squares.

## Sample Input

```ruby
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

## Expected Output

```ruby
[4, 16, 36, 64, 100]
```

## Rules

- Use `select` and `map`.
- Write it as a single chain, in one line.
- Do NOT use a loop.

---

# Q2. Total Cart Value

**Difficulty:** Easy

## Problem Statement

A shopping cart is stored as an array of hashes.

Calculate the total value of the cart, where each item costs `price × qty`.

## Sample Input

```ruby
[
  { name: "Pen",  price: 20,  qty: 3 },
  { name: "Book", price: 150, qty: 2 },
  { name: "Bag",  price: 800, qty: 1 }
]
```

## Expected Output

```text
Total : 1160
```

## Rules

- Use `reduce` (or `sum` with a block).
- Do NOT create a `total = 0` variable and add to it inside `each`.

---

# Q3. Pass and Fail List

**Difficulty:** Easy

## Problem Statement

Student marks are stored in a Hash.

Split the students into two groups in a **single pass**: those who scored 50 or above, and those who did not.

## Sample Input

```ruby
{
  "Alice" => 85,
  "Bob"   => 42,
  "Chris" => 67,
  "David" => 35,
  "Eva"   => 91
}
```

## Expected Output

```text
Passed : Alice, Chris, Eva
Failed : Bob, David
```

## Rules

- Use `partition`.
- Do NOT call `select` and then `reject` separately - that walks the list twice.
- Remember that `partition` on a Hash gives you `[key, value]` pairs.

---

# Q4. Clean the Data

**Difficulty:** Easy

## Problem Statement

The data below arrived in a mess. Clean it up so that you are left with a flat list of numbers, with no `nil` values and no repeats.

## Sample Input

```ruby
[[1, nil, 2], [2, 3, nil], [3, [4, nil]]]
```

## Expected Output

```ruby
[1, 2, 3, 4]
```

## Rules

- Use `flatten`, `compact` and `uniq`.
- Write it as one chain.

---

# Q5. Group Words by Length

**Difficulty:** Medium

## Problem Statement

Group the words by how many characters they have.

## Sample Input

```ruby
["ruby", "go", "rails", "css", "html", "js"]
```

## Expected Output

```ruby
{
  4 => ["ruby", "html"],
  2 => ["go", "js"],
  5 => ["rails"],
  3 => ["css"]
}
```

## Rules

- Use `group_by`.
- The keys appear in the order each length was first seen. Do not sort them.

---

# Q6. Word Frequency

**Difficulty:** Medium

## Problem Statement

Given a sentence, count how many times each word appears and store the result in a Hash.

## Sample Input

```text
ruby rails ruby html rails ruby
```

## Expected Output

```ruby
{
  "ruby"  => 3,
  "rails" => 2,
  "html"  => 1
}
```

## Rules

- Use `each_with_object` with a Hash as the object.
- Do NOT use `tally` or `group_by`.
- `Hash.new(0)` gives every new key a starting value of 0, which saves you an `if`.

---

# Q7. Rank List

**Difficulty:** Medium

## Problem Statement

Print a rank list, highest marks first. The rank number starts at 1.

## Sample Input

```ruby
{
  "Alice" => 78,
  "Bob"   => 92,
  "Chris" => 65,
  "David" => 88
}
```

## Expected Output

```text
1. Bob - 92
2. David - 88
3. Alice - 78
4. Chris - 65
```

## Rules

- Use `sort_by` for the order and `each_with_index` for the rank number.
- `each_with_index` starts at 0, so remember to add 1.

---

# Q8. Extract the Valid Marks

**Difficulty:** Medium

## Problem Statement

A list of marks arrived as text. Some entries are not numbers at all.

Keep only the entries that are made up of digits, and convert those to integers. Throw the rest away.

## Sample Input

```ruby
["45", "abc", "78", "", "90", "xy"]
```

## Expected Output

```ruby
[45, 78, 90]
```

## Rules

- Use `filter_map`, so that the checking and the converting happen in one pass.
- Note that `"abc".to_i` gives 0 and `"".to_i` also gives 0, so `to_i` alone is not a valid check.
- Hint: `text.to_i.to_s == text` is true only when the text really was a number.

---

# Q9. Stock Check Report

**Difficulty:** Medium

## Problem Statement

The shop stock is stored in a Hash. Answer four questions about it, each with `true` or `false`.

## Sample Input

```ruby
{
  "Pen"    => 12,
  "Book"   => 0,
  "Bag"    => 5,
  "Pencil" => 0
}
```

## Expected Output

```text
Any item out of stock?      : true
All items in stock?         : false
No item above 50?           : true
Exactly one item above 10?  : true
```

## Rules

- Use `any?`, `all?`, `none?` and `one?` - one for each line.
- Do NOT count things yourself and compare the count afterwards.

---

# Q10. Unique Subject List

**Difficulty:** Medium

## Problem Statement

Each student has a list of subjects. Build one sorted list of every subject offered, with no repeats.

## Sample Input

```ruby
[
  { name: "Alice", subjects: ["Ruby", "HTML"] },
  { name: "Bob",   subjects: ["CSS", "Ruby"] },
  { name: "Chris", subjects: ["JS", "HTML", "Ruby"] }
]
```

## Expected Output

```ruby
["CSS", "HTML", "JS", "Ruby"]
```

## Rules

- Use `flat_map`, not `map` followed by `flatten`.
- Finish the chain with `uniq` and `sort`.

---

# Q11. Write Your Own Iterator

**Difficulty:** Medium

## Problem Statement

Write a method `repeat_task(times)` of your own that behaves like a Ruby iterator.

- It runs the block `times` times.
- It hands the round number to the block, starting at 1.
- If somebody calls it **without** a block, it must not crash. It should print a message instead.

## Sample Input

```ruby
repeat_task(3) { |round| puts "Task #{round} completed" }
repeat_task(2)
```

## Expected Output

```text
Task 1 completed
Task 2 completed
Task 3 completed
No block given
```

## Rules

- Use `yield` to run the block.
- Use `block_given?` to check whether there is one.

---

# Q12. Four Ways to Shout

**Difficulty:** Medium

## Problem Statement

Convert the same list of words to uppercase four different ways:

1. with a block
2. with a Proc
3. with a Lambda
4. with `&:symbol`

Then show one difference between a Proc and a Lambda: call each of them with an extra argument they were not expecting, and print what happens.

## Sample Input

```ruby
["ruby", "rails", "html"]
```

## Expected Output

```text
Block  : ["RUBY", "RAILS", "HTML"]
Proc   : ["RUBY", "RAILS", "HTML"]
Lambda : ["RUBY", "RAILS", "HTML"]
Symbol : ["RUBY", "RAILS", "HTML"]

Proc with an extra argument   : runs anyway, the extra argument is ignored
Lambda with an extra argument : ArgumentError
```

## Rules

- A Proc or a Lambda is turned into a block with `&`, like `words.map(&my_proc)`.
- Catch the Lambda's error with `begin ... rescue ArgumentError ... end` so the program keeps running.

---

# Q13. Student Class

**Difficulty:** Hard

## Problem Statement

Create a `Student` class.

### Requirements

- `Student.new(name, marks)` where marks is an array.
- `name` can be read from outside, but never changed from outside.
- `#report` prints the name, the average and the grade.
- The average is rounded to 2 decimal places.
- The grade rules are: 75 and above is A, 60 to 74 is B, below 60 is C.
- Working out the average and working out the grade must both be **private** methods. Code outside the class must not be able to call them.
- `Student.total_students` is a **class method** that says how many students have been created so far.

## Sample Input

```ruby
alice = Student.new("Alice", [80, 90, 85])
bob   = Student.new("Bob",   [50, 45, 60])

alice.report
bob.report
puts "Total Students : #{Student.total_students}"
```

## Expected Output

```text
Alice - Average : 85.0 - Grade A
Bob - Average : 51.67 - Grade C
Total Students : 2
```

## Rules

- Use `attr_reader`, not `attr_accessor`.
- Use `private` for the two helper methods.
- Use `self.` to define the class method.

---

# Q14. Employee Salary with Inheritance

**Difficulty:** Hard

## Problem Statement

Create an `Employee` class, then two classes that inherit from it.

### Requirements

- `Employee.new(name, base_salary)`. Its `#salary` is simply the base salary.
- `Manager` earns a 20% bonus on the base salary, **plus** a fixed allowance of 5000.
- `Developer` earns a 10% bonus on the base salary.
- Manager and Developer must **not** repeat the base salary logic. They must call `super` and then adjust the answer.
- `#details` prints the name, the class and the salary as a whole number.

## Sample Input

```ruby
Employee.new("Raj", 30000).details
Manager.new("Priya", 50000).details
Developer.new("Karthik", 40000).details
```

## Expected Output

```text
Raj (Employee) : 30000
Priya (Manager) : 65000
Karthik (Developer) : 44000
```

## Rules

- Use `super` inside the child classes.
- Use `self.class` so that `#details` prints the right class name without you writing it three times.

---

# Q15. Modules – include, extend and prepend

**Difficulty:** Hard

## Problem Statement

Build one class that uses all three ways of pulling in a module, and put the class inside a namespace.

### Requirements

- Module `Printable` - brought in with **include**. Gives every document an instance method `#print_details`.
- Module `Trackable` - brought in with **extend**. Gives the class itself a class method `.created_by`.
- Module `Auditable` - brought in with **prepend**. It wraps `#save`: it prints a log line first, then calls `super` to run the real `#save`.
- The class is `Interloid::Document`, so it lives inside a `module Interloid` namespace.

## Sample Input

```ruby
doc = Interloid::Document.new("Report")

doc.print_details
doc.save
puts Interloid::Document.created_by
```

## Expected Output

```text
Document : Report
[LOG] save called
Report saved successfully
Created by : Interloid Team
```

## Rules

- `include` adds instance methods, `extend` adds class methods, `prepend` puts the module IN FRONT of the class so its method runs first.
- `Auditable#save` must call `super`. If you forget it, the real `#save` never runs.

---

# Q16. Comparable Products

**Difficulty:** Hard

## Problem Statement

Create a `Product` class that Ruby knows how to sort and compare, by writing only **one** comparison method.

### Requirements

- `Product.new(name, price)`.
- Products are compared by price.
- `include Comparable` and write `<=>`. Do not write `<`, `>`, `==`, `sort` or `max` yourself - Comparable gives you all of them once `<=>` works.

## Sample Input

```ruby
products = [
  Product.new("Bag",  800),
  Product.new("Pen",  20),
  Product.new("Book", 150)
]

puts products.sort.map(&:name).inspect
puts products.max.name
puts products.min.name
puts Product.new("Pen", 20) < Product.new("Book", 150)
```

## Expected Output

```text
["Pen", "Book", "Bag"]
Bag
Pen
true
```

## Rules

- `<=>` gives back -1 when this one is smaller, 0 when they are the same, and 1 when this one is bigger.
- Notice `map(&:name)` in the sample - that is `&:symbol`.

---

# Q17. Private vs Protected

**Difficulty:** Hard

## Problem Statement

Create a `Player` class that shows the difference between a private method and a protected method.

### Requirements

- `Player.new(name, score)`.
- `#name` is public.
- `#score` is **protected**. One Player is allowed to look at another Player's score, but code outside the class is not.
- `#beats?(other)` compares this player's score with the other player's score.
- `#summary` is public and prints the name and score.
- Calling `player.score` from outside must raise `NoMethodError`. Catch it and print the message instead of letting the program die.

## Sample Input

```ruby
ada = Player.new("Ada", 90)
bob = Player.new("Bob", 75)

puts ada.beats?(bob)
puts bob.beats?(ada)
ada.summary

begin
  ada.score
rescue NoMethodError
  puts "NoMethodError : score is protected"
end
```

## Expected Output

```text
true
false
Ada scored 90
NoMethodError : score is protected
```

## Rules

- Write one comment line in your answer explaining, in your own words, why `score` had to be protected and not private.

---

# Q18. Closures – Discount Generator

**Difficulty:** Hard

## Problem Statement

### Part A

Write a method `make_discount(percentage)` that gives back a **Lambda**. That lambda takes an amount and gives back the amount after the discount.

### Part B

Write a method `make_counter` that gives back a Lambda which counts up by 1 every time it is called. Two counters created separately must count on their own, without disturbing each other.

## Sample Input

```ruby
ten_percent   = make_discount(10)
fifty_percent = make_discount(50)

puts ten_percent.call(2000)
puts fifty_percent.call(2000)

counter_a = make_counter
counter_b = make_counter

puts counter_a.call
puts counter_a.call
puts counter_b.call
```

## Expected Output

```text
1800.0
1000.0
1
2
1
```

## Rules

- This works because a lambda remembers the local variable it was created next to. That is what a **closure** is.
- Do NOT use a global variable or an instance variable for the count.

---

# Q19. Sales Report

**Difficulty:** Challenge

## Problem Statement

Generate a sales report from the data below.

The report must show:

- Total sales
- Average sales
- The total for each region
- The top performer
- Everyone who sold below the average

## Sample Input

```ruby
sales = [
  { name: "Alice", region: "South", amount: 12000 },
  { name: "Bob",   region: "North", amount: 8000  },
  { name: "Chris", region: "South", amount: 15000 },
  { name: "David", region: "North", amount: 5000  },
  { name: "Eva",   region: "East",  amount: 10500 }
]
```

## Expected Output

```text
========== Sales Report ==========

Total Sales : 50500

Average Sales : 10100.0

Region Wise Total
South : 27000
North : 13000
East : 10500

Top Performer
Chris (15000)

Below Average Performers
Bob
David
```

## Rules

- Use `sum` for the totals.
- Use `group_by` for the region split.
- Use `sort_by` (or `max_by`) for the top performer.
- Use `select` for the below-average list.
- Do NOT use a `while` loop anywhere in this answer.

---

# Q20. Library System – Rebuilt with OOP

**Difficulty:** Challenge

## Problem Statement

In Week 2 you built a Library system using arrays and methods.

Build it again, this time using classes, modules and the Enumerable methods.

### Requirements

**Class `Book`**

- `Book.new(title, author)`
- `#title` and `#author` can be read, not written.
- `#to_s` gives back `"Ruby Basics by Matz"`.

**Module `Searchable`** - included into `Library`

- `#find_book(title)` gives back the book with that title, or `nil` if there is none. Use `find`.

**Class `Library`**

- Holds a collection of books.
- `#add_book(book)` adds one.
- `#borrow_book(title)` removes the book and prints `"Book Borrowed Successfully"`. If it is not there, print `"Book Not Available"`.
- `#return_book(book)` puts it back.
- `#available_books` prints every book using its `to_s`.
- `Library.total_libraries` is a class method counting how many libraries were created.

**Menu**

Show this menu repeatedly until the user chooses Exit.

```text
===== Library Menu =====

1. Add Book
2. Borrow Book
3. Return Book
4. View Available Books
5. Exit
```

## Sample Interaction

```text
Choice : 1

Book Title  : Ruby Basics
Book Author : Matz

Book Added Successfully
```

```text
Choice : 4

Available Books

Ruby Basics by Matz
Rails Guide by DHH
```

```text
Choice : 2

Book Title : HTML

Book Not Available
```

## Rules

- Use `attr_reader`.
- Use `find` / `select` / `reject` on the book collection. Do NOT search it with a `while` loop and an index.
- Use a module with `include` for the search behaviour.
- Do NOT use external libraries.

---

## Total Questions: 20

- Easy: 4
- Medium: 8
- Hard: 6
- Challenge: 2

**Duration:** 2 Hours 30 Minutes

**All the Best!**

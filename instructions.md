# Ruby Coding Standards & Best Practices

## 1. Naming Conventions

### Classes & Modules

Use **PascalCase**.

```ruby
class UserService
end

module PaymentGateway
end
```

---

### Files

Use **snake_case**

```
user_service.rb
payment_gateway.rb
order_processor.rb
```

---

### Methods

Use snake_case

```ruby
def calculate_total
end

def send_email
end
```

❌ Avoid

```ruby
def CalculateTotal
end

def calculateTotal
end
```

---

### Variables

```ruby
user_name = "John"
order_count = 10
```

Keep names meaningful.

Good

```ruby
total_price
discount_amount
customer_name
```

Bad

```ruby
a
b
x
tmp
foo
```

---

### Constants

Use SCREAMING_SNAKE_CASE

```ruby
MAX_RETRY_COUNT = 3
DEFAULT_TIMEOUT = 30
```

---

### Boolean Methods

Always end with **?**

```ruby
admin?
valid?
empty?
present?
active?
```

Example

```ruby
def active?
  status == "active"
end
```

---

### Dangerous Methods

End with **!**

```ruby
save!
update!
destroy!
```

Only create a bang method if there is a safe version.

Good

```ruby
save
save!
```

---

### Setter Methods

End with "="

```ruby
def name=(value)
  @name = value
end
```

---

## 2. Indentation

Use **2 spaces**

Never use tabs.

Good

```ruby
if admin?
  puts "Admin"
end
```

---

## 3. Line Length

Maximum

```
80–100 characters
```

Split long statements.

Good

```ruby
users = User
          .active
          .verified
          .order(:name)
```

---

## 4. Blank Lines

Separate logical sections.

Good

```ruby
def create
  validate

  save_user

  send_email
end
```

---

## 5. Spaces

### Around operators

Good

```ruby
a = b + c
price *= quantity
```

Bad

```ruby
a=b+c
```

---

### After commas

Good

```ruby
add(1, 2, 3)
```

Bad

```ruby
add(1,2,3)
```

---

### Hash

Good

```ruby
{
  name: "John",
  age: 25
}
```

---

## 6. Use Single Quotes

Unless interpolation is required.

Good

```ruby
'Hello'
```

Need interpolation

```ruby
"Hello #{name}"
```

---

## 7. Use Symbol Keys

Good

```ruby
{
  name: "John",
  age: 25
}
```

Avoid

```ruby
{
  :name => "John"
}
```

---

## 8. Use Early Return

Avoid nested if statements.

Bad

```ruby
def login(user)
  if user
    if user.active?
      puts "Welcome"
    end
  end
end
```

Good

```ruby
def login(user)
  return unless user
  return unless user.active?

  puts "Welcome"
end
```

---

## 9. Keep Methods Small

Ideal

```
5–15 lines
```

One method = One responsibility

Bad

```ruby
def process_order
  # validate

  # calculate

  # save

  # send email

  # update inventory

  # log

  # analytics
end
```

Good

```ruby
def process_order
  validate_order
  calculate_total
  save_order
  notify_customer
end
```

---

## 10. One Responsibility Per Method

Bad

```ruby
def save_user
  validate

  save

  send_email

  log

  analytics
end
```

Good

```ruby
def save_user
  validate
  persist
end
```

---

## 11. Avoid Long Parameter Lists

Bad

```ruby
create_user(name, age, email, city, phone)
```

Better

```ruby
create_user(user_params)
```

or

```ruby
User.new(params)
```

---

## 12. Don't Repeat Yourself (DRY)

Bad

```ruby
puts "Loading..."

puts "Loading..."
```

Good

```ruby
def loading
  puts "Loading..."
end
```

---

## 13. Prefer Guard Clauses

Good

```ruby
return if user.nil?

return unless user.active?
```

---

## 14. Avoid Deep Nesting

Bad

```ruby
if a
  if b
    if c
      puts "Done"
    end
  end
end
```

Good

```ruby
return unless a
return unless b
return unless c

puts "Done"
```

---

## 15. Prefer Enumerable Methods

Instead of loops

Good

```ruby
users.each do |user|
  puts user.name
end
```

Use

```ruby
map
select
reject
find
detect
any?
all?
none?
count
sum
group_by
```

Example

```ruby
names = users.map(&:name)
```

---

## 16. Use `each` Instead of `for`

Bad

```ruby
for user in users
  puts user.name
end
```

Good

```ruby
users.each do |user|
  puts user.name
end
```

---

## 17. Avoid Global Variables

Bad

```ruby
$counter = 10
```

---

## 18. Use Constants

Instead of magic numbers.

Bad

```ruby
sleep 30
```

Good

```ruby
DEFAULT_TIMEOUT = 30

sleep DEFAULT_TIMEOUT
```

---

## 19. Write Meaningful Comments

Don't explain **what**.

Explain **why**.

Bad

```ruby
# increment i
i += 1
```

Good

```ruby
# Retry because the payment gateway occasionally returns transient errors.
```

---

## 20. Avoid Comments When Code Can Explain Itself

Bad

```ruby
# get active users
users = User.where(active: true)
```

Good

```ruby
active_users = User.active
```

---

## 21. Prefer Predicate Methods

Bad

```ruby
if user.admin == true
```

Good

```ruby
if user.admin?
```

---

## 22. Use Safe Navigation

Good

```ruby
user&.address&.city
```

Instead of

```ruby
user.address.city if user
```

---

## 23. Prefer `unless` Only for Simple Conditions

Good

```ruby
return unless user
```

Avoid

```ruby
unless !user.active?
```

---

## 24. Use Keyword Arguments

Bad

```ruby
create_user("John", true, 30)
```

Good

```ruby
create_user(
  name: "John",
  admin: true,
  age: 30
)
```

---

## 25. Freeze Constants (if appropriate)

```ruby
COLORS = %w[
  red
  green
  blue
].freeze
```

---

## 26. Organize Methods

A common order inside a class:

```ruby
class User
  CONSTANT = 1

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def public_method
  end

  private

  def helper_method
  end
end
```

---

## 27. Prefer Modules for Shared Behavior

```ruby
module Printable
  def print
    puts to_s
  end
end
```

---

## 28. Error Handling

Catch only expected exceptions.

Bad

```ruby
rescue
end
```

Good

```ruby
rescue ActiveRecord::RecordNotFound
end
```

---

## 29. Use `tap` for Object Configuration

```ruby
user = User.new.tap do |u|
  u.name = "John"
  u.email = "john@example.com"
  u.save!
end
```

---

## 30. Follow RuboCop

Most Ruby projects use **RuboCop** to enforce consistent style.

```bash
bundle exec rubocop
bundle exec rubocop -A
```

---

# General Clean Code Principles

* Use descriptive names.
* Keep classes focused on a single responsibility (SRP).
* Favor composition over inheritance.
* Avoid duplicate code (DRY).
* Keep methods short and cohesive.
* Minimize nested conditionals.
* Prefer immutable values when practical.
* Write unit tests for business logic.
* Refactor regularly instead of letting technical debt accumulate.
* Use consistent formatting across the project.

---

# Additional Ruby Formatting & Style Rules

## 1. Leave One Blank Line Between Methods

✅ Good

```ruby
class User
  def full_name
    "#{first_name} #{last_name}"
  end

  def active?
    status == "active"
  end
end
```

❌ Bad

```ruby
class User
  def full_name
    "#{first_name} #{last_name}"
  end
  def active?
    status == "active"
  end
end
```

---

## 2. Leave Blank Lines Between Logical Sections Inside a Method

Don't write one huge block.

✅ Good

```ruby
def create_user(params)
  validate_params(params)

  user = User.new(params)

  user.save!

  send_welcome_email(user)

  user
end
```

---

## 3. Add Blank Lines Around Guard Clauses When Appropriate

```ruby
def process_order(order)
  return unless order

  return unless order.paid?

  ship_order(order)
end
```

---

## 4. Leave a Blank Line Before `rescue`, `ensure`, and `else` Sections

```ruby
begin
  process_payment

rescue PaymentError => e
  log_error(e)

ensure
  cleanup
end
```

---

## 5. Keep One Empty Line Before `private` / `protected`

```ruby
class UserService
  def create
  end

  private

  def validate
  end
end
```

---

## 6. Don't Add Extra Blank Lines

❌ Bad

```ruby
def create


  save


end
```

Only one blank line where needed.

---

# Comments

## 7. Write Comments That Explain **Why**, Not **What**

❌ Bad

```ruby
# Increment count
count += 1
```

✅ Good

```ruby
# Retry because the external API occasionally returns transient failures.
retry_request
```

---

## 8. Use TODO, FIXME, OPTIMIZE

```ruby
# TODO: Replace with background job.

# FIXME: Doesn't handle timezone conversion.

# OPTIMIZE: This query performs multiple database calls.
```

---

## 9. Avoid Commented-Out Code

❌ Bad

```ruby
# user.save
```

Delete it. Git history keeps old code.

---

# Method Formatting

## 10. One Responsibility Per Method

Instead of

```ruby
def create
  validate
  save
  notify
  update_inventory
  generate_invoice
end
```

Split into smaller methods.

---

## 11. Keep Methods Around 5–15 Lines

Long methods usually indicate multiple responsibilities.

---

## 12. Avoid More Than 3 Levels of Nesting

❌ Bad

```ruby
if user
  if user.active?
    if user.admin?
      if user.allowed?
      end
    end
  end
end
```

Use guard clauses instead.

---

# Condition Formatting

## 13. Blank Lines Around Complex Logic

Instead of

```ruby
def create
  validate
  if valid?
    save
  end
  notify
end
```

Write

```ruby
def create
  validate

  if valid?
    save
  end

  notify
end
```

---

## 14. Multi-line Conditions

```ruby
if user.admin? &&
   user.active? &&
   user.verified?
  send_email
end
```

---

## 15. Prefer Guard Clauses

```ruby
return unless user
return unless user.active?

process(user)
```

---

# Blocks

## 16. `{}` vs `do...end`

Use `{}` for single-line blocks.

```ruby
users.map(&:name)
```

or

```ruby
users.map { |user| user.name }
```

Use `do...end` for multi-line blocks.

```ruby
users.each do |user|
  puts user.name
  puts user.email
end
```

---

# Arrays & Hashes

## 17. Multi-line Arrays

```ruby
COLORS = [
  "red",
  "green",
  "blue"
].freeze
```

---

## 18. Multi-line Hashes

```ruby
user = {
  name: "John",
  age: 20,
  city: "Chennai"
}
```

---

## 19. Trailing Comma

For multi-line collections, keep a trailing comma.

```ruby
user = {
  name: "John",
  age: 20,
}
```

This makes future additions cleaner in Git diffs.

---

# Alignment

## 20. Align Method Chains

```ruby
User
  .active
  .verified
  .order(:name)
  .limit(10)
```

---

## 21. Align Long Arguments

```ruby
User.create(
  name: "John",
  age: 25,
  city: "Chennai"
)
```

---

# Parentheses

## 22. Use Parentheses for Method Calls with Arguments

```ruby
calculate_total(price, quantity)
```

Not

```ruby
calculate_total price, quantity
```

---

## 23. Omit Parentheses for DSLs (Rails)

```ruby
validates :name, presence: true

belongs_to :user
```

---

# Boolean Style

## 24. Don't Compare With `true` or `false`

❌

```ruby
if active == true
```

✅

```ruby
if active?
```

---

## 25. Don't Compare With `nil`

❌

```ruby
if user != nil
```

✅

```ruby
if user
```

or

```ruby
unless user.nil?
```

---

# String Formatting

## 26. Prefer String Interpolation

❌

```ruby
"Hello " + name
```

✅

```ruby
"Hello #{name}"
```

---

# Magic Numbers

## 27. Replace Magic Numbers

❌

```ruby
sleep 30
```

✅

```ruby
DEFAULT_TIMEOUT = 30

sleep(DEFAULT_TIMEOUT)
```

---

# Class Organization

## 28. Organize Classes Consistently

```ruby
class User
  MAX_RETRIES = 3

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def public_method
  end

  private

  def helper_method
  end
end
```

---

# Exception Handling

## 29. Rescue Specific Exceptions

```ruby
rescue ActiveRecord::RecordNotFound
```

Avoid

```ruby
rescue StandardError
```

unless you are re-raising or handling it deliberately.

---

# File Formatting

## 30. End Every File with a Newline

This is a POSIX convention and is enforced by many editors and linters.

---

# Frozen String Literal

## 31. Add Frozen String Literal Comment (if your project uses it)

```ruby
# frozen_string_literal: true
```

Place it as the first line of the file.

---

# Documentation

## 32. Add Documentation for Public APIs

For gems or reusable libraries, document public classes and methods using YARD.

```ruby
# Calculates the total order amount.
#
# @param items [Array<OrderItem>]
# @return [Numeric]
def calculate_total(items)
end
```

---

# General Cleanliness

## 33. Remove Debug Statements Before Committing

Never leave:

```ruby
puts user
p params
pp object
binding.pry
debugger
byebug
```

in production code.

---

# Follow the Boy Scout Rule

> **"Always leave the code cleaner than you found it."**

If you touch a file, improve naming, remove dead code, simplify logic, or add missing tests where appropriate—even if it's not directly related to your task.

---

## Ruby Code Review Checklist (Professional Teams)

Before creating a pull request, verify:

* ✅ One blank line between methods.
* ✅ Blank lines separate logical sections inside methods.
* ✅ No extra blank lines.
* ✅ Methods are short (ideally under 15 lines).
* ✅ Each method has a single responsibility.
* ✅ Maximum 2–3 levels of nesting.
* ✅ Guard clauses used where appropriate.
* ✅ Meaningful names for classes, methods, and variables.
* ✅ No magic numbers or hard-coded strings.
* ✅ Comments explain **why**, not **what**.
* ✅ No commented-out code.
* ✅ No debug statements (`puts`, `p`, `pp`, `binding.pry`, etc.).
* ✅ Consistent indentation (2 spaces, no tabs).
* ✅ Spaces around operators, after commas, and around logical sections.
* ✅ Use single quotes unless interpolation or escape sequences are needed.
* ✅ Long method chains and arguments are wrapped neatly.
* ✅ Rescue only expected exceptions.
* ✅ `private` and `protected` sections are clearly separated.
* ✅ RuboCop passes with no offenses.
* ✅ Tests are added or updated.


# Ruby Logical Practice Problems (30)

## 1. Count Character Frequency

Given a string:

```ruby
"programming"
```

Return a hash containing the frequency of each character.

Expected:

```ruby
{
  "p"=>1,
  "r"=>2,
  "o"=>1,
  ...
}
```

---

## 2. Find the Second Largest Number

Given:

```ruby
numbers = [12, 45, 67, 89, 45, 23, 89, 78]
```

Find the second largest **unique** number.

---

## 3. Reverse Every Word

Input:

```ruby
"Ruby is awesome"
```

Output:

```ruby
"ybuR si emosewa"
```

Don't reverse the sentence itself.

---

## 4. Find Duplicate Elements

Given:

```ruby
[2,5,3,2,7,8,5,9,7]
```

Return only duplicate values.

Expected:

```ruby
[2,5,7]
```

---

## 5. Count Vowels and Consonants

Input:

```ruby
"Programming"
```

Output:

```
Vowels: 3
Consonants: 8
```

Ignore case.

---

## 6. Rotate an Array

Input

```ruby
[1,2,3,4,5]
```

Rotate left by one.

Output

```ruby
[2,3,4,5,1]
```

Don't use `rotate`.

---

## 7. Longest Word

Given a sentence, find the longest word.

If multiple words have the same length, return the first one.

---

## 8. Remove Duplicate Characters

Input

```ruby
"banana"
```

Output

```ruby
"ban"
```

Preserve order.

---

## 9. Check Palindrome

Write a method to check whether a string is a palindrome.

Ignore spaces and case.

Example

```
Never Odd Or Even
```

should return

```
true
```

---

## 10. Sum of Digits

Input

```
48391
```

Output

```
25
```

---

# Arrays & Hashes

---

## 11. Group Words by Length

Input

```ruby
["cat","dog","elephant","rat","lion"]
```

Expected

```ruby
{
3=>["cat","dog","rat"],
4=>["lion"],
8=>["elephant"]
}
```

---

## 12. Find Missing Number

Given

```ruby
[1,2,3,5,6,7]
```

Find the missing number.

Assume only one number is missing.

---

## 13. Merge Two Arrays Without Duplicates

Input

```ruby
a=[1,2,3,4]
b=[3,4,5,6]
```

Output

```ruby
[1,2,3,4,5,6]
```

Don't use `uniq`.

---

## 14. Most Frequent Element

Given

```ruby
[4,5,1,5,2,4,5,3]
```

Find the most frequent element.

---

## 15. Count Word Frequency

Input

```
"ruby ruby rails ruby rails html css html"
```

Return

```ruby
{
"ruby"=>3,
"rails"=>2,
"html"=>2,
"css"=>1
}
```

---

## 16. Separate Even and Odd Numbers

Input

```ruby
[1,4,8,7,5,10]
```

Output

```ruby
{
even:[4,8,10],
odd:[1,7,5]
}
```

---

## 17. Intersection of Two Arrays

Input

```ruby
a=[1,2,3,4]
b=[3,4,5,6]
```

Output

```ruby
[3,4]
```

Don't use `&`.

---

## 18. Count Occurrence of Each String Length

Input

```ruby
["ruby","java","c","go","python"]
```

Output

```ruby
{
4=>2,
1=>1,
2=>1,
6=>1
}
```

---

## 19. Find Unique Characters

Input

```
"success"
```

Output

```
u,e
```

Characters appearing only once.

---

## 20. Sort Hash by Value

Input

```ruby
{
ruby:4,
java:2,
python:5,
php:1
}
```

Return hash sorted by value ascending.

---

# Methods & Logic

---

## 21. Password Validator

Create a method that checks whether a password

* minimum 8 characters
* contains at least one uppercase
* contains at least one lowercase
* contains at least one digit

Return true or false.

(Use only methods you've learned.)

---

## 22. Number Guess Analysis

Given

```ruby
secret=56

guesses=[34,60,54,56,90]
```

Print

```
Too Low
Too High
Too Low
Correct
Too High
```

---

## 23. Student Marks

Given

```ruby
students={
"Alice"=>87,
"Bob"=>42,
"Charlie"=>65,
"David"=>91,
"Eva"=>58
}
```

Return

* Passed students
* Failed students
* Highest scorer

Pass mark = 50.

---

## 24. Shopping Cart Total

Given

```ruby
cart={
Rice:450,
Oil:180,
Soap:45,
Sugar:60
}
```

Calculate total.

If total exceeds 500

apply 10% discount.

Return final amount.

---

## 25. Employee Attendance

Input

```ruby
["P","P","A","P","L","P","P","A"]
```

Count

Present

Absent

Leave

---

# Challenging Logic

---

## 26. Compress String

Input

```
aaabbccccdaa
```

Output

```
a3b2c4d1a2
```

---

## 27. Find First Non-Repeating Character

Input

```
swiss
```

Output

```
w
```

---

## 28. Inventory Update

Current inventory

```ruby
{
apple:10,
orange:5,
banana:7
}
```

Sold items

```ruby
{
apple:3,
banana:5
}
```

Return updated inventory.

---

## 29. Build a Menu Program

Create a menu using `loop`.

```
1.Add Number

2.Show Numbers

3.Find Largest

4.Find Smallest

5.Exit
```

Store numbers inside an array.

Keep asking until Exit.

---

## 30. Mini Student Result System

Take marks of **5 students**.

Store in a hash.

Display

* Highest mark
* Lowest mark
* Average
* Pass count
* Fail count
* Grade

Grades

```
90+  -> A
75-89 -> B
60-74 -> C
50-59 -> D
Below 50 -> Fail
```

---

# Rules

* ✅ Solve using only the topics you've listed.
* ✅ Avoid built-in shortcuts like `tally`, `rotate`, `uniq`, or other methods that solve the entire problem in one line.
* ✅ Prefer writing your own logic with loops, conditionals, arrays, hashes, and methods.
* ✅ Write clean, readable code and create methods where appropriate.
 
# Ruby OOP Practice Questions

## Instructions

- Solve each problem using **Object-Oriented Programming (OOP)** concepts.
- Avoid writing everything in a single class.
- Use meaningful class and method names.
- Follow Ruby naming conventions.
- Try to implement encapsulation wherever possible.

---

# Beginner Level

## Question 1: Student Management System

### Problem
Create a `Student` class with:

- Name
- Roll Number
- Marks

Create methods to:

- Display student details
- Check whether the student passed (Marks >= 35)

### Example Input

```
Name: John
Roll No: 101
Marks: 78
```

### Expected Output

```
Student Details
---------------
Name      : John
Roll No   : 101
Marks      : 78
Result     : Pass
```

---

## Question 2: Employee Salary

### Problem

Create an `Employee` class.

Attributes:

- Employee Name
- Basic Salary

Methods:

- Calculate HRA (20%)
- Calculate DA (10%)
- Calculate Gross Salary

### Example Input

```
Employee Name: Rahul
Basic Salary: 50000
```

### Expected Output

```
Employee Salary Report
----------------------
Employee : Rahul
Basic    : 50000
HRA      : 10000
DA       : 5000
Gross    : 65000
```

---

## Question 3: Bank Account

### Problem

Create a `BankAccount` class.

Methods:

- Deposit
- Withdraw
- Check Balance

### Example Input

```
Initial Balance: 10000

Deposit: 5000

Withdraw: 3000
```

### Expected Output

```
Current Balance : 12000
```

---

## Question 4: Rectangle

### Problem

Create a `Rectangle` class.

Methods:

- Area
- Perimeter

### Example Input

```
Length: 10

Width: 5
```

### Expected Output

```
Area       : 50
Perimeter  : 30
```

---

## Question 5: Car

### Problem

Create a `Car` class.

Attributes

- Brand
- Model
- Year

Method

- Display car details

### Example Input

```
Brand : Toyota
Model : Fortuner
Year  : 2023
```

### Expected Output

```
Car Details
-----------
Brand : Toyota
Model : Fortuner
Year  : 2023
```

---

# Intermediate Level

## Question 6: Library Management

### Problem

Create two classes.

### Book

- Title
- Author
- Available Copies

### Library

Methods

- Add Book
- Borrow Book
- Return Book
- Display Books

### Example Input

```
Book: Ruby Basics

Copies: 3

Borrow: Ruby Basics
```

### Expected Output

```
Book Borrowed Successfully

Available Copies : 2
```

---

## Question 7: Shopping Cart

### Problem

Create

### Product

- Name
- Price

### Cart

Methods

- Add Product
- Remove Product
- Total Price

### Example Input

```
Laptop 60000

Mouse 1200

Keyboard 2000
```

### Expected Output

```
Products

Laptop

Mouse

Keyboard

Total Price : 63200
```

---

## Question 8: Movie Ticket Booking

### Problem

Create

### Movie

- Name
- Ticket Price

### Booking

- Number of Tickets

Calculate

```
Total Amount
```

### Example Input

```
Movie : Leo

Ticket Price : 200

Tickets : 4
```

### Expected Output

```
Movie : Leo

Tickets : 4

Total Amount : 800
```

---

## Question 9: Hospital System

### Problem

Create

### Patient

- Name
- Age
- Disease

Method

Display Patient Details.

### Example Input

```
Name : Ravi

Age : 35

Disease : Fever
```

### Expected Output

```
Patient Details

Name : Ravi

Age : 35

Disease : Fever
```

---

## Question 10: Electricity Bill

### Problem

Create an `ElectricityBill` class.

Rules

- First 100 Units → ₹2/unit
- Next 100 Units → ₹3/unit
- Remaining Units → ₹5/unit

### Example Input

```
Units : 250
```

### Expected Output

```
Electricity Bill

Units : 250

Amount : ₹850
```

---

# Advanced Level

## Question 11: Online Shopping System

Create the following classes.

- Customer
- Product
- Cart
- Order

Requirements

- Add products to cart
- Calculate total
- Place order
- Print invoice

### Example Input

```
Customer : John

Laptop : ₹50000

Mouse : ₹1000

Keyboard : ₹2500
```

### Expected Output

```
Invoice

Customer : John

Laptop    ₹50000

Mouse     ₹1000

Keyboard  ₹2500

-------------------

Total : ₹53500
```

---

## Question 12: School Management System

Classes

- Student
- Teacher
- Classroom

Requirements

- Add students
- Assign teacher
- Display classroom information

### Example Input

```
Teacher : David

Students

John

Alice

Bob
```

### Expected Output

```
Classroom Report

Teacher : David

Students

1. John

2. Alice

3. Bob
```

---

## Question 13: ATM Machine

Create a class that supports

- PIN Validation
- Deposit
- Withdraw
- Balance Inquiry

### Example Input

```
PIN : 1234

Deposit : 10000

Withdraw : 2500
```

### Expected Output

```
PIN Verified

Current Balance : 7500
```

---

## Question 14: Vehicle Rental System

Classes

- Vehicle
- Customer
- Rental

Features

- Rent Vehicle
- Return Vehicle
- Calculate Rental Charge

### Example Input

```
Car

Rate : ₹1500/day

Days : 4
```

### Expected Output

```
Vehicle : Car

Days : 4

Rental Charge : ₹6000
```

---

## Question 15: E-Commerce System (Real-Time)

Create classes

- Product
- Customer
- Cart
- Order
- Payment

Requirements

- Product stock management
- Add/Remove products
- Discount calculation
- GST calculation
- Payment processing
- Invoice generation

### Example Input

```
Customer : John

Laptop : ₹50000

Mouse : ₹1000

Discount : 10%

GST : 18%
```

### Expected Output

```
Invoice

Customer : John

Subtotal : ₹51000

Discount : ₹5100

GST : ₹8262

Grand Total : ₹54162

Payment Successful
```

---

# Challenge Questions

## Challenge 1

Implement **method overriding** using:

- Animal
- Dog
- Cat

Expected Output

```
Dog is Barking

Cat is Meowing
```

---

## Challenge 2

Implement **inheritance** using:

- Person
- Student
- Employee

Display details of both Student and Employee.

---

## Challenge 3

Implement **encapsulation** by making salary private and providing getter/setter methods with validation.

Expected Output

```
Salary Updated Successfully
```

or

```
Invalid Salary
```

---

## Challenge 4

Implement **polymorphism** using Duck Typing.

Classes

- Circle
- Rectangle
- Triangle

Each class should implement:

```
draw
```

Method.

Expected Output

```
Drawing Circle

Drawing Rectangle

Drawing Triangle
```

---

## Challenge 5

Build a complete **Bank Management System** using the following classes.

- Customer
- Account
- Transaction
- Bank

Features

- Create Account
- Deposit
- Withdraw
- Transfer Money
- Mini Statement
- Balance Inquiry

### Example Output

```
Account Created Successfully

Deposited ₹5000

Withdrawn ₹2000

Transferred ₹1000

Current Balance : ₹2000

Mini Statement

+₹5000

-₹2000

-₹1000
```

---

# Bonus Practice

Try implementing these systems using OOP:

1. Hotel Management System
2. Railway Reservation System
3. Flight Booking System
4. Restaurant Billing System
5. Parking Lot System
6. Inventory Management System
7. Employee Payroll System
8. Cricket Scoreboard System
9. Hospital Appointment System
10. Food Delivery Application

---

## Concepts Covered

- Classes & Objects
- Instance Variables
- Constructors (`initialize`)
- Methods
- Encapsulation
- Inheritance
- Method Overriding
- Polymorphism (Duck Typing)
- Modules & Mixins
- Composition
- Aggregation
- Association
- Object Collaboration
- Real-world OOP Design
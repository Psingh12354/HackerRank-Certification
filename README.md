# <div align=center><a href="https://www.hackerrank.com/priyanshu_706811"><img src="https://github.com/Psingh12354/Java-HackeRank/blob/master/hack.png" width="35%"></img></a></div>

<div float=left align=center>
  <img src="https://github.com/Psingh12354/Certificates/blob/master/sql.JPG" width="20%" />
  <img src="https://github.com/Psingh12354/Certificates/blob/master/HackerRank%20Problem%20Solving%20(Basic)).PNG" width="20%" /> 
  <img src="https://github.com/Psingh12354/Certificates/blob/master/C%2B%2B.PNG" width="20%" />
  <img src= https://github.com/Psingh12354/Certificates/blob/master/HackerRank%20Python(Basic2).PNG width="20%" />
</div>
<div float=left align=center>
  <img src="https://github.com/Psingh12354/Certificates/blob/master/badges1.JPG" width="80%" />
</div>

## 🐍 Python Programs

### 📌 Average Function

```python
import math
import os
import random
import re
import sys

def avg(*nums):
    return sum(nums)/len(nums)

if __name__ == '__main__':
```


### 📌 Reverse Words Order and Swap Cases

```python
#!/bin/python

def reverse_words_order_and_swap_cases(sentence):
    word_list = sentence.split()
    reversed_list = word_list[::-1]
    reversed_sentence = " ".join(reversed_list)
    return reversed_sentence.swapcase()

if __name__ == '__main__':
    fptr = open(os.environ['OUTPUT_PATH'], 'w')
    sentence = input()
    result = reverse_words_order_and_swap_cases(sentence)
    fptr.write(result + '\n')
    fptr.close()
```


### 📌 Shape Classes with Area Method

```python
class Rectangle:
    def __init__(self, breadth, length):
        self.breadth = breadth
        self.length = length
    
    def area(self):
        return self.breadth * self.length

class Circle:
    def __init__(self, radius):
        self.radius = radius
    
    def area(self):
        return math.pi * (self.radius ** 2)
```


### 📌 Gaming Laptop Battery Life

```python
def getBattery(events):
    c = 50
    for i in events:
        if i < 0:
            c += i
        else:
            c += i
            if c > 100:
                c = 100
        print(c)
    return c
```


### 📌 String Anagram

```python
from collections import Counter

def stringAnagram(dictionary, query):
    dict_sorted = ["".join(sorted(word)) for word in dictionary]
    query_sorted = ["".join(sorted(word)) for word in query]
    result = []
    count = Counter(dict_sorted)
    
    for word in query_sorted:
        result.append(count.get(word, 0))
    
    return result
```


---

## ☕ Java Programs

### 📌 The Adder Class

```java
class Adder extends Calculator {
    int add(int a, int b) {
        return a + b;
    }
}
```


---

## 🛢️ SQL Queries

### 📌 Student Advisor

```sql
SELECT std.roll_number, std.name 
FROM student_information std, faculty_information fi 
WHERE std.advisor = fi.employee_id 
AND (fi.gender = 'M' AND fi.salary > 15000 OR fi.gender = 'F' AND fi.salary > 20000);
```


### 📌 Products Without Sales

```sql
SELECT sku, product_name 
FROM PRODUCT P 
LEFT JOIN INVOICE_ITEM Ii ON Ii.product_id = P.id 
WHERE invoice_id IS NULL 
ORDER BY SKU;
```


### 📌 Customer Spending

```sql
SELECT b.customer_name, CAST(a.total_price AS DECIMAL(10,6)) amount 
FROM customer b, invoice a 
WHERE a.customer_id = b.id 
AND a.total_price <= (SELECT (0.25 * AVG(a.total_price)) FROM invoice a) 
ORDER BY amount DESC;
```

```sql
SELECT customer_name, TO_CHAR(total_price, 'fm9999999.900000') 
FROM customer c, Invoice i 
WHERE c.id = i.customer_id 
AND total_price < (SELECT (0.25) * SUM(total_price) / COUNT(id) FROM Invoice);
``` make above more better in looks

<div align="center">
  <a href="https://www.hackerrank.com/priyanshu_706811">
    <img src="https://github.com/Psingh12354/Java-HackeRank/blob/master/hack.png" width="35%" alt="HackerRank Profile" />
  </a>
</div>

<div align="center">
  <img src="https://github.com/Psingh12354/Certificates/blob/master/sql.JPG" width="20%" />
  <img src="https://github.com/Psingh12354/Certificates/blob/master/HackerRank%20Problem%20Solving%20(Basic)).PNG" width="20%" /> 
  <img src="https://github.com/Psingh12354/Certificates/blob/master/C%2B%2B.PNG" width="20%" />
  <img src="https://github.com/Psingh12354/Certificates/blob/master/HackerRank%20Python(Basic2).PNG" width="20%" />
</div>
<div align="center">
  <img src="https://github.com/Psingh12354/Certificates/blob/master/badges1.JPG" width="80%" />
</div>

# 🐍 Python Programs

### 📌 Average of Numbers

```python
def avg(*nums):
    return sum(nums) / len(nums)

# Example usage:
print(avg(2, 4, 6, 8))  # Output: 5.0
```


### 📌 Reverse Words Order and Swap Cases

```python
def reverse_words_order_and_swap_cases(sentence):
    word_list = sentence.split()
    reversed_list = word_list[::-1]
    reversed_sentence = " ".join(reversed_list)
    return reversed_sentence.swapcase()

# Example usage:
sentence = "Hello World"
print(reverse_words_order_and_swap_cases(sentence))  # Output: "wORLD hELLO"
```


### 📌 Shape Classes with Area Method

```python
import math

class Rectangle:
    def __init__(self, breadth, length):
        self.breadth = breadth
        self.length = length
    
    def area(self):
        return self.breadth * self.length

class Circle:
    def __init__(self, radius):
        self.radius = radius
    
    def area(self):
        return math.pi * (self.radius ** 2)
```


### 📌 Gaming Laptop Battery Life

```python
def getBattery(events):
    battery = 50
    for change in events:
        battery += change
        battery = min(max(battery, 0), 100)
        print(battery)
    return battery
```


### 📌 String Anagram Match

```python
from collections import Counter

def stringAnagram(dictionary, query):
    dict_sorted = ["".join(sorted(word)) for word in dictionary]
    query_sorted = ["".join(sorted(word)) for word in query]
    count = Counter(dict_sorted)
    return [count.get(q, 0) for q in query_sorted]
```


# ☕ Java Programs

### 📌 The Adder Class

```java
class Adder extends Calculator {
    int add(int a, int b) {
        return a + b;
    }
}
```


# 🛢️ SQL Queries

### 📌 Student Advisor Query

Selects students along with their advisor info, filtering on advisor gender and salary.

```sql
SELECT 
    std.roll_number, 
    std.name 
FROM 
    student_information std
JOIN 
    faculty_information fi 
    ON std.advisor = fi.employee_id 
WHERE 
    (fi.gender = 'M' AND fi.salary > 15000)
    OR (fi.gender = 'F' AND fi.salary > 20000);
```


### 📌 Products Without Sales

Find all products that have never been sold:

```sql
SELECT 
    p.sku, 
    p.product_name
FROM 
    PRODUCT p
LEFT JOIN 
    INVOICE_ITEM ii 
    ON ii.product_id = p.id
WHERE 
    ii.invoice_id IS NULL
ORDER BY 
    p.sku;
```


### 📌 Top Customers by Lowest Spending

Find customers whose total purchases are in the lowest 25%:

```sql
SELECT 
    c.customer_name, 
    TO_CHAR(i.total_price, 'fm9999999.900000') AS amount
FROM 
    customer c
JOIN 
    invoice i ON i.customer_id = c.id 
WHERE 
    i.total_price < (
        SELECT 0.25 * SUM(total_price) / COUNT(id)
        FROM invoice
    )
ORDER BY 
    amount DESC;
```


#### 📌 Variant with AVG instead of SUM/COUNT

```sql
SELECT 
    b.customer_name, 
    CAST(a.total_price AS DECIMAL(10,6)) AS amount
FROM 
    customer b
JOIN 
    invoice a ON a.customer_id = b.id
WHERE 
    a.total_price <= (
        SELECT 0.25 * AVG(total_price) 
        FROM invoice
    )
ORDER BY 
    amount DESC;
```

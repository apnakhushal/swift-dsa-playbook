# 📚 Data Structures Basics Series

## Topic 02: Stack

Continuing our **Data Structures Fundamentals Series**, today we explore another extremely important data structure:

**Stack**

Stacks appear everywhere in computer science — from **function calls to undo operations, expression evaluation, and many interview problems**.

Understanding stacks clearly will make several algorithmic patterns much easier.

---

# 📦 What is a Stack?

A **Stack** is a linear data structure that follows the principle:

## **LIFO — Last In, First Out**

This means the **last element inserted is the first one to be removed**.

Think of it like a **stack of plates**.

You place a plate on the top and remove from the top.

---

### Example

```
Push 10
Push 20
Push 30
```

Stack becomes:

```
Top
 ↓
30
20
10
```

If we remove (pop):

```
Pop → 30
```

Stack becomes:

```
Top
 ↓
20
10
```

---

# 🧠 Why Do We Need Stack?

Stacks help solve problems involving:

* Order reversal
* Backtracking
* Recursion
* Nested structures
* Expression evaluation

Common real-life examples:

* **Undo / Redo operations**
* **Browser history navigation**
* **Function call stack**
* **Balanced parentheses checking**

---

# 🧩 Stack Operations

Stacks mainly support **four fundamental operations**.

---

## 1️⃣ Push

Add an element to the **top of the stack**.

```
Push(10)
Push(20)
Push(30)
```

Result:

```
30
20
10
```

Time Complexity

```
O(1)
```

---

## 2️⃣ Pop

Remove the **top element** from the stack.

```
Stack:
30
20
10
```

Pop → removes **30**

Result:

```
20
10
```

Time Complexity

```
O(1)
```

---

## 3️⃣ Peek / Top

Returns the **top element** without removing it.

```
Stack:
30
20
10
```

Peek → **30**

Time Complexity

```
O(1)
```

---

## 4️⃣ isEmpty

Check whether stack is empty.

```
stack.isEmpty
```

Returns `true` or `false`.

---

# 🧑‍💻 Implementing Stack in Swift

Stacks can be implemented using:

* **Arrays**
* **Linked Lists**

Most common implementation uses **Array**.

---

## Stack Implementation using Array

```swift
struct Stack {
    
    private var elements: [Int] = []
    
    mutating func push(_ value: Int) {
        elements.append(value)
    }
    
    mutating func pop() -> Int? {
        return elements.popLast()
    }
    
    func peek() -> Int? {
        return elements.last
    }
    
    func isEmpty() -> Bool {
        return elements.isEmpty
    }
}
```

---

## Example Usage

```swift
var stack = Stack()

stack.push(10)
stack.push(20)
stack.push(30)

print(stack.peek())   // 30

stack.pop()

print(stack.peek())   // 20
```

---

# 🔄 Visual Understanding

```
Push(10)
Push(20)
Push(30)

Stack

Top
 ↓
30
20
10
```

```
Pop()

Top
 ↓
20
10
```

---

# ⚙️ Time Complexity

| Operation | Complexity |
| --------- | ---------- |
| Push      | O(1)       |
| Pop       | O(1)       |
| Peek      | O(1)       |
| isEmpty   | O(1)       |

Stacks are **very efficient**.

---

# 🔁 Stack in Recursion

Recursion internally uses a **call stack**.

Example:

```
factorial(3)

Call Stack

factorial(3)
factorial(2)
factorial(1)
```

Each function waits for the previous call to complete.

---

# 🧩 Classic Problems Using Stack

These problems are frequently asked in interviews.

---

## 1️⃣ Valid Parentheses

Check if parentheses are balanced.

Example:

```
()[]{} → valid
(] → invalid
```

Stack helps track opening brackets.

---

## 2️⃣ Next Greater Element

Find the next greater number for each element.

Uses **Monotonic Stack pattern**.

---

## 3️⃣ Reverse a String

Push characters into stack → pop to reverse.

---

## 4️⃣ Evaluate Postfix Expression

Example:

```
2 3 + 4 *
```

Stack helps evaluate operations.

---

## 5️⃣ Min Stack

Design stack that also returns minimum element efficiently.

---

# 🚀 Easy Interview Problems

Practice these to build strong stack intuition.

1. Valid Parentheses
2. Implement Stack using Array
3. Reverse a String using Stack
4. Min Stack
5. Next Greater Element

---

# 🎯 Key Takeaways

* Stack follows **LIFO principle**
* Only **top element** is accessible
* Push and pop operations are **O(1)**
* Used in recursion, parsing, expression evaluation
* Very common in interview questions

---

# 💡 Final Note

Stacks may look simple, but they power many advanced algorithms.

When solving problems, ask yourself:

> **“Can a stack help track order or previous elements?”**

Often the answer is **yes**.

---

Stay curious.
Keep practicing.

**Team iOS Labs 🍎**

# {{PROBLEM}} Method Design Recipe

## 1. Describe the Problem

_Put or write the user story here. Add any clarifying notes you might have._

The user wants to verify that their text starts with a capital letter and ends with a suitable sentence-ending punctuation mark e.g "!", ".", "?" so that they can improve their grammar.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

```ruby

grammar_correct = grammar_check(text)
text: a string of words given by the user
grammar_correct: a boolean confirming weather the text is grammatically correct
# The method will print true or false
```


## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby

grammar_check("It's sunny today.") => true
grammar_check("It's sunny today?") => true
grammar_check("it's sunny today.") => false
grammar_check("It's sunny today") => false
grammar_check("It's sunny today!") => true
```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

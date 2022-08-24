{{PROBLEM}} Method Design Recipe
1. Describe the Problem
Two

    As a user
    So that I can improve my grammar
    I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# verify => true or false
# text = string => capital letter and punctuation

Put or write the user story here. Add any clarifying notes you might have.
2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

# EXAMPLE

is_correct = grammar(text)

# grammar is checking for true or false
# text is a string

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

# 1
grammar("")
== fail "Please provide input"

# 2
grammar("Hello!")
== true

# 3
grammar("Hello,")
== false

# 4
grammar("hello,")
== false


Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
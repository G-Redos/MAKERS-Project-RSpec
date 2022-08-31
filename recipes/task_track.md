{{PROBLEM}} Method Design Recipe

1. Describe the Problem

# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO

Put or write the user story here. Add any clarifying notes you might have.
2. Design the Method Signature

``` ruby
=begin
Sprint 1
keeping track of tasks

Sprint 2
check if text includes the string '#TODO'
=end

def method_name(parameters)
```

Include the name of the method, its parameters, return value, and side effects.

# EXAMPLE

# `extract_upper` extracts uppercase words from a list of words
uppercase_words = extract_uppercase(mixed_words)

mixed_words: a string (e.g. "hello WORLD")
uppercase_words: a list of strings (e.g. ["WORLD"])

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

extract_uppercase("hello WORLD") => ["WORLD"]
extract_uppercase("HELLO WORLD") => ["HELLO", "WORLD"]
extract_uppercase("hello world") => []
extract_uppercase("hello WoRLD") => []
extract_uppercase("hello WORLD!") => ["WORLD"]
extract_uppercase("") => []
extract_uppercase(nil) throws an error

Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
{{PROBLEM}} Method Design Recipe

1. Describe the Problem

# As a user
# So that I can keep track of my tasks
# I want to check if a text includes the string #TODO

# Sprint 1
# keeping track of tasks

# Sprint 2
# check if text includes the string '#TODO'

2. Design the Method Signature

``` ruby
contains_todo = task_tracker(text)

# parameters = text is a string
# return value = returns contains_todo is boolean
# side effects = none
```
# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

#  1 task_tracker("walk the dog") => false
# 2  task_tracker("#TODO walk the cat") => true
# 3  task_tracker("#todo walk the cat") => false


Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
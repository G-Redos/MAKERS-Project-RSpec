{{Reading_time}} Method Design Recipe
1. Describe the Problem
One

    As a user
    So that I can manage my time
    I want to see an estimate of reading time for text, assuming that I can read 200 words a minute.


Example solution

# estimate.to_f = integer
# text = string
# 200 wpm

Put or write the user story here. Add any clarifying notes you might have.

2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

# EXAMPLE

# `reading_time` estimate of reading time for a text
calculate_reading_time = reading_time(text)

text: a string (e.g. "hello")
reading_time: estimate represented in minutes

# The method doesn't print anything or have any other side-effects

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

# 1
reading_time("")
=> 0

# 2
reading_time("one")
=> 1

# 3
reading_time(TWO_HUNDRED_WORDS)
=> 1

# 3
reading_time(THREE_HUNDRED_WORDS)
=> 2

# 4
reading_time(FOUR_HUNDRED_WORDS)
=> 2

# 5
reading_time(FIVE_THOUSAND_WORDS)
=> 25

Encode each example as a test. You can add to the above list as you go.
4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
#As a user
#So that I can keep track of my tasks
#I want to check if a text includes the string #TODO

def task_tracker(text)
  return text.include?("#TODO")
end
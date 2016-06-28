require_relative 'todolist.rb'

# Creates a new todo list
the_bucket_list = TodoList.new("My Bucket List")

# Add four new items
the_bucket_list.add_item("Travel around the world")
the_bucket_list.add_item("Drive a steam engine train")
the_bucket_list.add_item("Swim along with Dolphins")
the_bucket_list.add_item("Meet Arsene Wenger")

# Print the list
the_bucket_list.print_list

# Delete the first item

# Print the list

# Delete the second item

# Print the list

# Update the completion status of the first item to complete

# Print the list

# Update the title of the list

# Print the list

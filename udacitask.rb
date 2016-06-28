require_relative 'todolist.rb'

# Creates a new todo list
the_bucket_list = TodoList.new("My Bucket List")

# Add four new items
#the_bucket_list.add_item("Travel around the world")
#the_bucket_list.add_item("Drive a steam engine train")
#the_bucket_list.add_item("Swim along with Dolphins")
#the_bucket_list.add_item("Meet Arsene Wenger once")

# Read from file
the_bucket_list.read_from_file

# Print the list
the_bucket_list.print_list

# Delete the first item
the_bucket_list.delete_item

# Print the list
the_bucket_list.print_list

# Delete the second item
the_bucket_list.delete_item

# Print the list
the_bucket_list.print_list

# Update the completion status of the first item to complete
the_bucket_list.update_completed_status!

# Print the list
the_bucket_list.print_list

# Update the title of the list
the_bucket_list.update_todolist_title

# Print the list
the_bucket_list.print_list

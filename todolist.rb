class TodoList
  attr_reader :title, :items

  # Initialize todolist with list title and empty array of items
  def initialize(list_title)
    @title = list_title
    @items = Array.new # Empty array to start with
  end

  # Method to add an item to todolist
  def add_item(new_item)
    item = Item.new(new_item)
    @items.push(item)
  end

  # Method to print items in todolist
  def print_list
    puts
    puts "=" * @title.length
    puts @title
    puts "=" * @title.length
    @items.each do |item|
      item.print_item(@items.index(item),item)
    end
    puts
  end

  # Method to delete the items in todolist
  def delete_item
    print "Enter the item number to be deleted : "
    item_number = gets.chomp.to_i
    if item_number > @items.count
      puts "Enter a valid item number"
    else
      @items.delete_at(item_number - 1)
    end
  end

  # Method to update the completed status of a todolist item
  def update_completed_status!
    if @items.count > 1
      print "Enter the item number which is completed : "
    end
    completed_item_number = gets.chomp.to_i
    @items[completed_item_number - 1].change_completed_status(true)
  end

  # Method to update the title of the todolist
  def update_todolist_title
    print "Enter new name for your todolist : "
    new_title = gets.chomp.to_s
    @title = new_title
  end
end

class Item

    attr_reader :description, :completed_status

    # Initialize item with a description and marked as not complete
    def initialize(item_description)
        @description = item_description
        @completed_status = false
    end

    # Method to print the item
    def print_item(position,item)
        status = current_item_status(item) ? "Completed" : "Not Completed"
        puts "#{position + 1} - #{item.description} \t- #{status}"        
    end

    # Method which returns a boolean value
    def current_item_status(item)
        item.completed_status
    end

    # Change the completed status to true
    def change_completed_status(status)
        @completed_status = status
    end
end

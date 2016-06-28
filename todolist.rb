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
        puts "*" * 15
        puts @title
        puts "*" * 15
        @items.each do |item|
            item.print_item(item)
        end
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
    def print_item(item)
        puts "#{item.description} - #{item.completed_status}"        
    end
end

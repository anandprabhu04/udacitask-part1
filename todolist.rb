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
            item.print_item(@items.index(item),item)
        end
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
        puts "#{position + 1} - #{item.description} - #{item.completed_status}"        
    end
end

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
end

class Item

    attr_reader :description, :completed_status

    # Initialize item with a description and marked as not complete
    def initialize(item_description)
        @description = item_description
        @completed_status = false
    end
end

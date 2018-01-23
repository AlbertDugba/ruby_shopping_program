def create_list
    print "What is the list name: "
    name = gets.chomp

    hash = {"name"=> name, "items"=>Array.new}
    return hash
end

def add_list_item
    print "What is the item name ? "
    item_name = gets.chomp

    print "How much? "
    quantity = gets.chomp.to_i

    
    hash = {"name"=> item_name, "quantity"=>quantity}
    return hash
end

def print_ouput(character="-")
    puts character * 80
end


def print_list(list)
    print "List: #{list['name']}"
    print_ouput()

    list["items"].each do |item|
        puts "Item: " + item['name']
        puts "Quantity: " + item['quantity'].to_s
        puts print_ouput()
    end
end

list = create_list()
list['items'].push(add_list_item())
puts add_list_item().inspect
print_list(list)
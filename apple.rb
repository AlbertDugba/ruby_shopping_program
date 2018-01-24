def create_list
    print "What is the list name ?  "
    name = gets.chomp

    hash ={"name"=> name, "items"=> Array.new}
    return hash
end



def add_list_item
    print "What is the item called ? "
    item_name = gets.chomp

    print "How much?"
    quantity = gets.chomp.to_i

    hash = {"name"=> item_name, "quantity"=>quantity}
    return hash
end

def print_sep(character="=")
    puts character * 70
end

def print_list(list)
    puts "List : #{list['name']}"
    
    puts print_sep()
    list["items"].each do |item|
        puts "\tItem: " + item['name'] + "\t\t\t" + 
             "Quantity: " + item['quantity'].to_s
       
    end
    puts print_sep()
end


list = create_list()
puts list.inspect

puts "Great! Add some items to your list"
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())
list['items'].push(add_list_item())

puts "Here's your list: \n"
puts list.inspect
print_list(list)
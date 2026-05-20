require_relative 'lib/linked_list'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.prepend('snake')
list.append('turtle')

def print_values(l, n)
  puts "list #{n}: #{l} "
  # puts "list #{n} size: #{l.size}"
  # puts "list #{n} head: #{l.head}"
  # puts "list #{n} tail: #{l.tail}"
  # puts "list #{n} node popped: #{l.pop}"
  # puts "list #{n} after pop: #{l}"
end

list2 = LinkedList.new

print_values(list, 1)
print_values(list2, 2)

# puts "List 1 item at index 3 is #{list.at(3)}"
# puts "List 2 item at index 3 is #{list2.at(3)}"

# puts list.contains?('dog')
# puts list.contains?('pig')
# puts list2.contains?('dog')

# puts list.index('parrot')
# puts list.index('pig')
# puts list2.index('dog')

list.insert_at(2,'horse','tiger')
puts list
list.insert_at(0,'lion')
puts list
list.insert_at(-2,'duck')
list.insert_at(100, 'horse')
list.insert_at(0,'duck','horse')
puts list
item = list.remove_at(2)
puts item
puts list
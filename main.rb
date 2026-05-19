require_relative 'lib/linkedlist'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.prepend('snake')
list.append('turtle')

def print_values(l, n)
  puts "list #{n}: #{l} "
  puts "list #{n} size: #{l.size}"
  puts "list #{n} head: #{l.head}"
  puts "list #{n} tail: #{l.tail}"
  puts "list #{n} node popped: #{l.pop}"
  puts "list #{n} after pop: #{l}"
end

list2 = LinkedList.new

print_values(list, 1)
print_values(list2, 2)

puts list.at(3)
puts list2.at(3)

puts list.contains?('dog')
puts list.contains?('pig')
puts list2.contains?('dog')

puts list.index('parrot')
puts list.index('pig')
puts list2.index('dog')

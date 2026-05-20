# Linked List Implementation in Ruby

This is a linked list implemenation in ruby
Classes:
  * `LinkedList` - Represents the full list
  * `Node` - Each node of the linked list. Has two attributes - value and next_node

## Attributes in LinkedList
1. `head` - points to the first node of the linked list
2. `tail` - points to the last node of the linked list
   
## Methods in LinkedList
1. `#append(value)` adds a new node containing value to the end of the list.
2. `#prepend(value)` adds a new node containing value to the start of the list.
3. `#size` returns the total number of nodes in the list.
4. `#head` returns the value of the first node in the list. If the list is empty, it returns nil.
5. `#tail` returns the value of the final node in the list. If the list is empty, it returns nil.
6. `#at(index)` returns the value of the node at the given index. If there’s no node at the given index, it returns nil.
7. `#pop` removes the head node from the list and return that node’s value. If called on an empty list, it returns nil.
8. `#contains?(value)` returns true if the passed in value is in the list and otherwise returns false.
9. `#index(value)` returns the index of the node containing the value. If the value isn’t found, it returns nil. If more than one node has a value matching the given value, it returns the index of the first node with the matching value.
10. `#to_s` represents the LinkedList objects as strings, so we can print them out and preview them in the console. If the list is empty, it returns nil
11. `#insert_at(index, *values)` inserts new nodes with the given values at the given index.
12. `#remove_at(index)` removes the node at the given index. 

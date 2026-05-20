require_relative 'node'

class LinkedList

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value, nil)
    if @head.nil?
      @head = @tail = node
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(value)
    node = Node.new(value, nil)
    if @head.nil?
      @head = @tail = node
    else
      node.next_node = @head
      @head = node
    end
  end

  def to_s
    current_node = @head
    return_string = ""
    until current_node.nil?
      return_string = return_string + "( #{current_node.value} ) -> "
      current_node = current_node.next_node 
    end
    return_string = return_string + 'nil'
    return_string
  end 

  def size
    return 'nil' if @head.nil?
    current_node = @head
    size = 0
    until current_node.nil?
      size += 1
      current_node = current_node.next_node
    end
    size
  end

  def head
    @head.nil? ? 'nil' : @head.value
  end

  def tail
    @tail.nil? ? 'nil' : @tail.value
  end

  def at(index)
    current_index = 0
    current_node = @head
    return 'nil' if @head.nil?
    return 'IndexError' if index < current_index || index > size
    while current_index <= index
      if current_index == index
        return current_node.value
      else
        current_node = current_node.next_node
        current_index += 1
      end
    end
    'nil'
  end

  def pop
    return 'nil' if @head.nil?
    current_head = @head
    new_head = @head.next_node
    @head = new_head
    current_head.value
  end

  def contains?(value)
    current_node = @head
    until current_node.nil?
      return true if current_node.value == value
      current_node = current_node.next_node
    end
    false
  end

  def index(value)
    current_node = @head
    current_index = 0
    until current_node.nil?
      return current_index if current_node.value == value
      current_index += 1
      current_node = current_node.next_node
    end
    return 'nil'
  end

  def check_for_index_error(index)
    list_size = self.size
    if index < 0 || index >= list_size
      puts "Index out of bounds"
      return false
    end
    true
  end

  def get_node_at_index(index)
    current_node = @head
    current_index = 0
    while current_index < index
      current_node = current_node.next_node
      current_index += 1
    end
    current_node
  end

  def insert_at(index, *values)
    return unless check_for_index_error(index)
    values = values.reverse
    if index == 0
      values.each { |value| self.prepend(value) }
    else
      node_at_index = get_node_at_index(index)
      node_at_prev_index = get_node_at_index(index - 1)
      values.each do |value|
        new_node = Node.new(value, node_at_index)
        node_at_prev_index.next_node = new_node
        node_at_index = new_node
      end
    end
  end

  def remove_at(index)
    return unless check_for_index_error(index)
    if index == 0
      self.pop
    else
      node_at_index = get_node_at_index(index)
      node_at_prev_index = get_node_at_index(index-1)
      node_at_prev_index.next_node = node_at_index.next_node
    end
    node_at_index.value
  end
end


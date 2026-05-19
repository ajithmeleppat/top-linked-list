require_relative 'node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    self.head = nil
    self.tail = nil
    @list = []
  end
  
  def head
    @head.nil? ? 'nil' : "Value: #{@head.value} , Next: #{@head.next_node.value}"
  end

  def tail
    @tail.nil? ? 'nil' : "Value: #{@tail.value} , Next: #{@tail.next_node}"
  end

  def at(index)
    @list.at(index).nil? ? 'nil' : @list.at(index).value
  end

  def to_s
    list_as_string = ""
    return "nil" if @list.empty?
    @list.each do |node|
      list_as_string = list_as_string + "( #{node.value} ) -> "
      list_as_string = list_as_string + " nil" if tail == node
    end
    list_as_string
  end

  def size
    return @list.length
  end

  def append(value)
    node = Node.new(value)
    @list << node
    if @head.nil?
      @head = @tail = node 
    else
      @tail.next_node = node
      @tail = node
    end
  end

  def prepend(value)
    node = Node.new(value)
    if @head.nil?
      @head = @tail = node 
    else
      temp = @head
      @head = node
      @list.unshift(node)
      @head.next_node = temp
    end
  end

  def pop
    return 'nil' if @head.nil?
    @head = @head.next_node
    elem = @list.shift()
    elem.value
  end

  def contains?(value)
    @list.each do |l|
      return true if l.value == value
    end
    false
  end

  def index(value)
    @list.each_with_index do |l, i|
      return i if l.value == value
    end
    'nil'
  end
end
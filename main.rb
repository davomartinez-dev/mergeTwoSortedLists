require 'byebug'

class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def add(number)
    new_node = ListNode.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next = new_node
      @tail = new_node
    end
  end
end

def merge_two_lists(l1, l2)
  result = []
  while !l1.nil? && !l2.nil?
    if l1.val > l2.val
      result << l2.val
      l2 = l2.next
    else
      result << l1.val
      l1 = l1.next
    end
  end

  if l1.nil?
    until l2.nil?
      result << l2.val
      l2 = l2.next
    end
  end

  if l2.nil?
    until l1.nil?
      result << l1.val
      l1 = l1.next
    end
  end

  result
end

byebug
puts 'hello world'

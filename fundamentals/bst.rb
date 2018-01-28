# Binary Search Tree

class Node
  attr_accessor :value, :lchild, :rchild

  def initialize(options)
    @value = options[:value]
    @lchild = options[:lchild]
    @rchild = options[:rchild]
  end

  def set_child(node, type)
    if type == "left"
      @lchild = node
    elsif type == "right"
      @rchild = node
    end
  end
end

def find_node(root_node, target)
  current_node = root_node
  while current_node
    if current_node.value == target
      return current_node
    end
    if target < current_node.value
      current_node = current_node.lchild
    end
    if target > current_node.value
     current_node = current_node.rchild
    end
  end
end

def insert_node(root_node, node_to_insert)
  current_node = root_node
  while current_node
    if node_to_insert.value < current_node.value
      previous_node = current_node
      current_node = current_node.lchild
    else
      previous_node = current_node
      current_node = current_node.rchild
    end
  end
  if node_to_insert.value < previous_node.value
    previous_node.set_child(node_to_insert, "left")
  else
    previous_node.set_child(node_to_insert, "right")
  end
end

node3 = Node.new(value: 3)
node0 = Node.new(value: 0)
node2 = Node.new(
  value: 2,
  lchild: node0,
  rchild: node3,
)
node6 = Node.new(
  value: 6
)

node10 = Node.new(
  value: 10
)

node8 = Node.new(
  value: 8,
  lchild: node6,
  rchild: node10,
)

node4 = Node.new(
  value: 4,
  lchild: node2,
  rchild: node8,
)


puts find_node(node4, 4)
puts find_node(node4, 8)
puts find_node(node4, 1)
puts find_node(node4, 100)

node9 = Node.new(value: 9)
node1 = Node.new(value: 1)
node12 = Node.new(value: 12)

insert_node(node4, node9)
insert_node(node4, node1)
insert_node(node4, node12)

require "pry"

class Node
  attr_accessor :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(child)
    @children << child
  end
end

eru  = Node.new("Eru")

ulmo = Node.new("Ulmo")
varda = Node.new("Varda")
melkor = Node.new("Melko")
lorien = Node.new("Lorien")

eru.add_child(ulmo)
eru.add_child(varda)
eru.add_child(melkor)
eru.add_child(lorien)

gandalf = Node.new("Gandalf")
sauron = Node.new("Sauron")
melkor.add_child(sauron)
lorien.add_child(gandalf)

def breadth_first_search(node, target)
  queue = Queue.new
  queue.push(node)

  while(!queue.empty?)
    node = queue.pop
    puts "Checking: #{node.value}"
    return target if node.value == target
    node.children.each do |child_node|
      queue.push(child_node)
    end
  end
  false
end

puts breadth_first_search(eru, "Gandalf")



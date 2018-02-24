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


# Recursive depth_first_search
@found = nil
def depth_first_search(node, target)
  return unless @found
  puts "Checking #{node.value}"
  if node.value == target
    @found = node
    return
  end

  return if node.children.empty?

  node.children.each do |child|
    depth_first_search(child, target)
  end
end

depth_first_search(eru, "Gandalf")



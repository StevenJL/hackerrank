# A graph can be said to be 'two-colorable' if each vertex in the graph can be assigned a color such that no two adjacent
# vertices in the graph are assigned the same color.
#
# Returns true if the graph containing startNode can be colored with only two colors, and false otherwise
# The graph containing startNode can be assumed to be uncolored (getColor() returning null for all GraphNodes)
# in its initial state, and undirected (if a GraphNode A has B in its neighbor set, then B has A in its neighbor set)

# Implement this: two_colorable? (GraphNode startNode)

def alternate(color)
  if color == :red
    return :blue
  else
    return :red
  end
end

class SameNeighborColorError < StandardError; end

class GraphNode
  attr_accessor :color
  attr_reader :neighbors

  def initialize
    @neighbors = []
  end

  def add_neighbor(node)
    @neighbors << node
  end
end

def two_colorable?(node)
  begin
    color_node_and_neighbors(node, :red)
  rescue SameNeighborColorError
    return false
  end
  true
end

def color_node_and_neighbors(node, color)
  # raise error if any of its neighbors already has this color
  if node.neighbors.any? { |neighbor| neighbor.color == color }
    raise SameNeighborColorError
  end

  # color the node
  node.color = color

  # check if it has any un-colored neighbors
  return unless node.neighbors.any? { |neighbor| neighbor.color.nil? }

  # attempt to color neighbors
  next_color = alternate(color)
  node.neighbors.each do |neighbor|
    color_node_and_neighbors(neighbor, next_color)
  end
end


# Test Cases

# Good Case (nodes in a row)
good_graph = GraphNode.new
node1 = GraphNode.new
node2 = GraphNode.new
node3 = GraphNode.new
node4 = GraphNode.new
good_graph.add_neighbor(node1)
node1.add_neighbor(node2)
node3.add_neighbor(node2)
node4.add_neighbor(node4)

unless two_colorable?(good_graph)
  raise "Graph is 2-colorable but returned false"
end

# Bad Case (a triangle)
bad_graph = GraphNode.new
node1 = GraphNode.new
node2 = GraphNode.new
bad_graph.add_neighbor(node1)
node1.add_neighbor(node2)
node2.add_neighbor(bad_graph)

if two_colorable?(bad_graph)
  raise "Graph is not 2-colorable but returned true"
end

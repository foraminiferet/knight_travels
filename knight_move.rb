class Node
  attr_reader :position, :parent, :visited

  KNIGHT_MOVES = [[-2, 1], [-1, 2], [1, 2], [2, 1], [2, -1], [1, -2], [-1, -2], [-2, -1]]

  def initialize(position, parent = nil, visited = [])
    @position = position
    @parent = parent
    @visited = visited
    @visited << @position
  end

  def children_nodes
    KNIGHT_MOVES.map { |move_position| [move_position[0] + position[0], move_position[1] + position[1]] }
                .reject { |move| visited.include?(move) }
                .map { |new_position| Node.new(new_position, self, visited.dup) }
  end
end

def display_parent(node)
  display_parent(node.parent) unless node.parent.nil?
  puts "#{node.position} "
end

def knight_travels(start_position, end_position)
  queue = []
  current_node = Node.new(start_position)
  until current_node.position == end_position
    current_node.children_nodes.each { |node| queue << node }
    current_node = queue.shift
  end
  display_parent(current_node)
end

knight_travels([3, 3], [4, 3])

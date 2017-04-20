class Node
  attr_accessor :label, :neighbors
  def initialize(label)
    @label = label
    @neighbors = []
  end
end

class Solution
    # param a : head node of linked list
    # return the head node in the linked list
    def cloneGraph(a)
      queue = []
      queue << a
      cloned = {a => Node.new(a.label)}
      while !queue.empty?
        old_node = queue.shift
        old_node.neighbors.each do |neighbor|
          new_neighbor = cloned[neighbor] || Node.new(neighbor.label).tap do |nb|
                                               cloned[neighbor] = nb
                                               queue << neighbor
                                             end
          cloned[old_node].neighbors << new_neighbor
        end
      end
      cloned.first.last
    end
end

root = Node.new(1)
root.neighbors << Node.new(2)
root.neighbors << Node.new(3)
root.neighbors << Node.new(4)
root.neighbors[1].neighbors << Node.new(5)
root.neighbors[1].neighbors << Node.new(6)

new_root = Solution.new.cloneGraph(root)
puts '--------------'
puts new_root.neighbors.inspect

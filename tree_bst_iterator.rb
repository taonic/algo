class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  def initialize(root)
    @path = []
    node = root
    while node
      path << node
      node = node.left
    end
  end

  def has_next?
    path.size > 0
  end

  def next
    path.pop.tap do |last|
      node = last.right
      while node
        path << node
        node = node.left
      end
    end
  end

  private

  attr_reader :path
end

root = TreeNode.new(10)
root.left = TreeNode.new(8)
root.left.left = TreeNode.new(5)
root.left.left.left = TreeNode.new(4)
root.left.left.right = TreeNode.new(6)

iterator = Solution.new(root)

while iterator.has_next?
  puts iterator.next.data
end

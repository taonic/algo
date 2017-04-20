class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  # param a : root node of tree
  # return an integer
  def maxDepth(a)
    depths = []
    depth = 0
    path(a, depth, depths)
    depths.max
  end

  def path(a, depth, depths)
    if a
      depth += 1
      path(a.left, depth, depths)
      path(a.right, depth, depths)
    else
      depths << depth
    end
  end
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.left.left = TreeNode.new(4)
root.left.left.left = TreeNode.new(4)
root.left.left.left.left = TreeNode.new(4)
root.right = TreeNode.new(3)
root.right.right = TreeNode.new(6)
root.right.right.right = TreeNode.new(6)

puts Solution.new.maxDepth(root)

class Solution
  # param a : root node of tree
  # return an integer
  def maxDepth(a)
    if a.nil?
      0
    else
      [1 + maxDepth(a.left), 1 + maxDepth(a.right)].max
    end
  end
end

puts Solution.new.maxDepth(root)

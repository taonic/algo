class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  # param a : root node of tree
  # return an integer
  def isValidBST(a)
    valid?(a)
  end

  private

  def valid?(root, lower = nil, upper = nil)
    if root.nil?
      true
    else
      (lower.nil? || lower < root.data) &&
        (upper.nil? || root.data < upper) &&
        valid?(root.left, lower, root.data) &&
        valid?(root.right, root.data, upper)
    end
  end
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.right = TreeNode.new(3)

root2 = TreeNode.new(2)
root2.left = TreeNode.new(1)
root2.left.left = TreeNode.new(-1)
root2.left.right = TreeNode.new(2.5)
root2.right = TreeNode.new(3)

root3 = TreeNode.new(2)
root3.left = TreeNode.new(1)
root3.left.left = TreeNode.new(-1)
root3.left.right = TreeNode.new(1.5)
root3.right = TreeNode.new(3)

puts Solution.new.isValidBST(root)
puts Solution.new.isValidBST(root2)
puts Solution.new.isValidBST(root3)

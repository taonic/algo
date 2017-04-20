class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  def min_depth(a)
    if a.left.nil? && a.right.nil?
      1
    elsif a.left.nil?
      min_depth(a.right) + 1
    elsif a.right.nil?
      min_depth(a.left) + 1
    else
      [min_depth(a.left) + 1, min_depth(a.right) + 1].min
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

puts Solution.new.min_depth(root)


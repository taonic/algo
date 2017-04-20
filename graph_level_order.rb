class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  # param a : root node of tree
  # return a array of array of integers
  def levelOrder(a)
    queue = []
    output = []
    queue << a
    output << [a.data]
    while !queue.empty?
      node = queue.shift
      unless node.left.nil? && node.right.nil?
        output << [].tap do |line|
          line << node.left.data if node.left
          line << node.right.data if node.right
        end
      end
      queue << node.left if node.left
      queue << node.right if node.right
    end
    output
  end

  def levelOrder(a)
    queue = []
    output = []
    queue << a
    output << [a.data]
    while !queue.empty?
      node = queue.shift
      unless node.left.nil? && node.right.nil?
        output << [].tap do |line|
          line << node.left.data if node.left
          line << node.right.data if node.right
        end
      end
      queue << node.left if node.left
      queue << node.right if node.right
    end
    output
  end
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.left.left = TreeNode.new(4)
root.left.right = TreeNode.new(5)
root.right = TreeNode.new(3)
root.right.left = TreeNode.new(8)
root.right.right = TreeNode.new(6)
root.right.right.left = TreeNode.new(9)
#     1
#    / \
#   2   3
#  / \   \
# 4   5   6
puts Solution.new.levelOrder(root).inspect

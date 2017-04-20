class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  def bt_vertical_traverse(root)
    return [] if root.nil?

    result = {}
    queue, cols = [], []
    queue << root
    cols << 0

    while(!queue.empty?) do
      node = queue.shift
      col = cols.shift
      if result[col].nil?
        result[col] = []
      end
      result[col] << node.data
      if node.left
        queue << node.left
        cols << col - 1
      end
      if node.right
        queue << node.right
        cols << col + 1
      end
    end
    result.sort_by { |col, _| col }
  end
end

root = TreeNode.new(1)
root.left = TreeNode.new(2)
root.left.left = TreeNode.new(4)
root.left.left.left = TreeNode.new(4)
root.left.left.left.left = TreeNode.new(4)
root.right = TreeNode.new(3)
root.right.left = TreeNode.new(5)
root.right.right = TreeNode.new(6)
root.right.right.right = TreeNode.new(6)

puts Solution.new.bt_vertical_traverse(root).inspect

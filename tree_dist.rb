class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  def dist(root, a, b)
    m1, m2 = [], []
    if !path(root, a, m1) || !path(root, b, m2)
      return nil
    end
    while !m1.empty? && !m2.empty?
      if m1.first == m2.first
        m1.shift
        m2.shift
      else
        break
      end
    end
    m1.size + m2.size
  end

  def path(root, a, m)
    if root.nil?
      false
    else
      m << root.data
      if root.data == a
        true
      elsif path(root.left, a, m) || path(root.right, a, m)
        true
      else
        m.pop
        false
      end
    end
  end
end

#   1
#  / \
# 2   3
#      \
#       4

root = TreeNode.new(3)
root.left = TreeNode.new(5)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.left.right.left = TreeNode.new(7)
root.left.right.right = TreeNode.new(4)
root.right = TreeNode.new(1)
root.right.left = TreeNode.new(0)
root.right.right = TreeNode.new(8)

puts Solution.new.dist(root, 1, 2)

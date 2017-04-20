class TreeNode
	attr_accessor :left, :right, :data
	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  # param a : root node of tree
  # param b : integer
  # param c : integer
  #return an integer
  def lca(root, b, c)
    return b if b == c
    m1, m2 = [], []
    if path(root, m1, b) == false || path(root, m2, c) == false
      return -1
    end

    i = 0
    while i < m1.size && i < m2.size
      m1[i] == m2[i] ? i += 1 : break
    end
    m1[i-1] || -1
  end

  def path(root, m, val)
    return false if root.nil?
    m << root.data
    if root.data == val
      true
    elsif (root.left != nil && path(root.left, m, val)) ||
        (root.right != nil && path(root.right, m, val))
      true
    else
      m.pop
      false
    end
  end
end

root = TreeNode.new(3)
root.left = TreeNode.new(5)
root.left.left = TreeNode.new(6)
root.left.right = TreeNode.new(2)
root.left.right.left = TreeNode.new(7)
root.left.right.right = TreeNode.new(4)
root.right = TreeNode.new(1)
root.right.left = TreeNode.new(0)
root.right.right = TreeNode.new(8)

root = TreeNode.new(3)
root.left = TreeNode.new(1)

puts Solution.new.lca(root, 1, 1)

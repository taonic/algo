class TreeNode
	attr_accessor :left, :right, :data

	def initialize(data)
    @data, @left, @right = data, nil, nil
	end
end

class Solution
  def serialise(node)
    @serialized = ''
    ser(node)
    @serialized
  end

  def deserialise(input)
    @input = input.split('')
    des
  end

  private

  def ser(node)
    if node
      @serialized += node.data.to_s
      ser(node.left)
      ser(node.right)
    else
      @serialized += '#'
    end
  end


  def des
    element = @input.shift
    if element == '#'
      nil
    else
      node = TreeNode.new(element)
      node.left = des
      node.right = des
      node
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

puts Solution.new.serialise(root)
input = '12444#####3#6#6##'
node = Solution.new.deserialise(input)
puts node.right.right.data

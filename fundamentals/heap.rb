# Heap, stored in array

# indx   type
#  0     root
#  1     lchild
#  2     rchild
#  3     lchildlchild
#  4     lchildrchild
#  5     rchildlchild
#  6     rchildrchild

# child -> parent
# (n - 1)/2
# 1 -> 0
# 2 -> 0
# 4 -> 1
# 3 -> 1
# 6 -> 2
# 5 -> 2

class BinaryMinHeap
  def initialize(initial_value)
    @store = [initial_value]
  end

  def heapify!
    indx = @store.length - 1
    while indx > 0
      parent_indx = parent_indx_from_child_indx(indx)
      if @store[parent_indx] > @store[indx]
        swap!(indx, parent_indx)
      end
      indx = parent_indx
    end
  end

  def insert(value)
    @store.push(value)
    heapify!
  end

  private

  def swap!(indx1, indx2)
    @store[indx1], @store[indx2] = @store[indx2], @store[indx1]
  end

  def parent_indx_from_child_indx(child_indx)
    return 0 if child_indx == 0
    (child_indx - 1) / 2
  end
end

bmh = BinaryMinHeap.new(15)
bmh.insert(13)
bmh.insert(2)
bmh.insert(7)
bmh.insert(27)
bmh.insert(17)

# Selection Sort

def selection_sort(list)
  length = list.length
  for i in (0..(length - 3))
    for j in ((i+1)..(length - 1))
      if list[i] > list[j]
        list[i], list[j] = list[j], list[i]
      end
    end
  end
  list
end

x = [41,13,45,3,1,2,3,10]
selection_sort(x)

# Merge sort

def merge_sort(list)
  if list.length == 1
    return list
  end
  length = list.length
  left_edge = ((length / 2) - 1)
  right_edge = (length / 2)
  left = list[0..left_edge]
  right = list[right_edge..-1]
  merge(merge_sort(left), merge_sort(right))
end

# Where list1 and list2 are both sorted
def merge(list1,list2)
  sorted_list = []
  while !(list1.empty? && list2.empty?)
    if list1.empty? && !list2.empty?
      sorted_list << list2.shift
    end
    if list2.empty? && !list1.empty?
      sorted_list << list1.shift
    end
    if list1.first && list2.first
      if list1.first < list2.first
        sorted_list << list1.shift
      else
        sorted_list << list2.shift
      end
    end
  end
  sorted_list
end

# merge_sort([1,3,4,64,5,4,3,10,3,2])






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


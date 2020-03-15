def bubble_sort(array)
    iteration = 1
    while iteration < array.length
      count = 0
        while count+iteration < array.length
            array[count+1], array[count] = array[count], array[count+1] if array[count] > array[count+1]
            count +=1
        end
      iteration +=1
    end
    puts array
  end

def bubble_sort_by(array)
    iteration = 1
    while iteration < array.length
      count = 0
        while count+iteration < array.length
            array[count+1], array[count] = array[count], array[count+1] if yield(array[count], array[count+1]) > 0
            count +=1
        end
      iteration +=1
    end
    puts array
  end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end
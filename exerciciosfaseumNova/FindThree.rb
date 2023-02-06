# Dada uma matriz com todos os elementos distintos,
#encontre os três maiores elementos. A complexidade de tempo esperada é O(n)
#e o espaço extra é O(1).

def print3largest(arr, arr_size)
    # There should be atleast three elements  
    if (arr_size < 3) then
      puts "Invalid Input"
      return
    end
  
    first = 0    
    second = 0
    third = 0
  
    for i in 0..(arr_size - 1) do
      # If current element is greater than first
      if (arr[i] > first) then
        third = second
        second = first
        first = arr[i]
      # If arr[i] is in between first and second then update second      
      elsif (arr[i] > second) then
        third = second
        second = arr[i]
      elsif (arr[i] > third) then
        third = arr[i]
      end
    end
  
    puts "Three largest elements are: #{first} #{second} #{third}"
  end
  
  # Driver program to test above function
  arr = [12, 13, 1, 10, 34, 1]
  n = arr.length()
  print3largest(arr, n)
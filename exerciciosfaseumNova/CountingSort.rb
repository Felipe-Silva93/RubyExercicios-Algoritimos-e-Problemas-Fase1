
#A classificação por contagem é uma técnica de classificação baseada em 
#chaves entre um intervalo específico. Ele funciona contando o número de objetos 
#com valores de chave distintos (uma espécie de hashing). Em seguida, faça algumas 
#operações aritméticas para calcular a 
#posição de cada objeto na sequência de saída.

# The main function that sort the given string arr[] in alphabetical order
def countSort(arr)

    # The output character array that will have sorted arr  
    output = Array.new(arr.length())
  
    # Create a count array to store count of inidividual
    # characters and initialize count array as 0
    count = Array.new(256, 0)
  
    # For storing the resulting answer since the string is immutable  
    ans = Array.new()
  
    # Store count of each character
    for i in 0..(arr.length() - 1)
      count[arr[i].ord] += 1
    end
  
    # Change count[i] so that count[i] now contains actual
    # position of this character in output array 
    for i in 0..255
      count[i] += count[i -1]
    end
  
    # Build the output character array
    for i in 0..arr.length() -1
      output[count[arr[i].ord] - 1] = arr[i]
      count[arr[i].ord] -= 1
    end
  
    # Copy the output array to arr, so tha arr now
    # contais sorted characters
    for i in 0..(arr.length() - 1)
      ans[i] = output[i]
    end
  
    return ans
  end
  
  # Driver program to test above function
  arr = "geeksforgeeks"
  ans = countSort(arr)
  puts "Sorted character array is " + ans.join("-")
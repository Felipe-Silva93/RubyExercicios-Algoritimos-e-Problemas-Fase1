#O Bubble Sort é o algoritmo de classificação mais simples que 
#funciona trocando repetidamente os elementos adjacentes 
#se eles estiverem na ordem errada. Este algoritmo não é adequado 
#para grandes conjuntos de dados, pois sua complexidade de
#tempo média e de pior caso é bastante alta.

def bubbleSort(arr)
    n = arr.count
  
    range = 0..(n - 1)
  
    range.each do |i|
      (0..((n - 1) - i - 1)).each do |j|
        arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      end
    end
  end
  
  arr1 = [64, 34, 25, 12, 22, 11, 90]
  
  bubbleSort(arr1)
  
  puts 'Sorted array is: '
  
  (0..arr1.count - 1).each do |i|
    puts(arr1[i])
  end
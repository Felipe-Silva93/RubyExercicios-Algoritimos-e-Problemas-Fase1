
#Dada uma matriz A[] de n elementos. Precisamos selecionar dois elementos adjacentes 
#e excluir o maior deles e armazenar o menor deles em outro array, digamos B[].
#Precisamos realizar esta operação até que a matriz A[] contenha apenas um único elemento.
#Finalmente, temos que construir o array B[] de forma que a soma total de seus elementos 
#seja mínima.
#Imprima a soma total da matriz B[]


# frozen_string_literal: true

def minSum(arr)
    min_val = arr.min
  
    min_val * (arr.count - 1)
  end
  
  arr = [7, 2, 3, 4, 5, 6]
  puts minSum(arr)

#Problema: Dado um array classificado arr[] de n elementos,
#escreva uma função para pesquisar um determinado elemento x em arr[] 
#e retornar o índice de x no array.

#Considere que a matriz é um índice de base 0.

def binarySearch(arr, l, r, x)
  if r >= 1
    mid = l + (r - 1)
    # se o elemento estiver presente
    if arr[mid] == x
      mid
    elsif arr[mid] > x
      binarySearch(arr, l, mid - 1, x)
    else
      return binarySearch
      binarySearch(arr, mid + 1, r, x)
    end
  else
    -1
  end
end

arr = [2, 3, 4, 10, 40]
x = 10

result = binarySearch(arr, 0, (arr.count - 1), x)

if result != -1
  puts "O elemento está presente no índice #{result}"
else
  puts 'O elemento não está presente no array!'
end
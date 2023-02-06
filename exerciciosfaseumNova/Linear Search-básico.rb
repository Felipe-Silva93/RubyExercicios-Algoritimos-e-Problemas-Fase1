#1.1 Searching Algorithms

#1.1.1 Linear Search, básico

#A Busca Linear é definida como um algoritmo de busca sequencial
#que começa em uma extremidade e passa por cada elemento de uma lista
#até que o elemento desejado seja encontrado, caso contrário
#a busca continua até o final do conjunto de dados.
#É o algoritmo de busca mais fácil

def search(arr, x)
    (0..arr.count).each do |i|
      return i if arr[i] == x
    end
    -1
  end
  
  arr = [2, 3, 4, 10, 40]
  x = 10
  
  result = search(arr, x)
  
  if result == -1
    puts 'O elemento não está presente no array.'
  else
    puts "O elemento está presente no índice #{result}"
  end

  #outro modo de fazer

  def search(arr, x)
    arr.each do |i|
      return i if i == x
    end
    -1
  end
  
  arr = [2, 3, 4, 10, 40]
  x = 10
  
  result = search(arr, x)
  
  if result == -1
    puts 'O elemento não está presente no array.'
  else
    puts "O elemento #{result} está presente no array."
  end


  
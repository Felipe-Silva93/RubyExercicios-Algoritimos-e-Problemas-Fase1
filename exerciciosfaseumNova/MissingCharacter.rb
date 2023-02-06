#Pangram é uma frase que contém todas as letras do alfabeto inglês.
#Dada uma string, encontre todos os caracteres que faltam na string, ou seja,
#os caracteres que podem tornar a string um Pangram. Precisamos 
#imprimir a saída em ordem alfabética.

MAX_CHAR = 26

# Returns characters that needs to be added to make str
def missingChars(str)

  # A boolean array to store characters
  # present in string.
  #present = [false for i in 0..MAX_CHAR]
  presentArr = [false];
    
  for i in 0..(MAX_CHAR - 2) do
    presentArr.push(false)
  end

  # Traverse string and mark characters present in string
  for i in 0..(str.length() - 1) do
    if (str[i] >= 'a' and str[i] <= 'z') then
      presentArr[str[i].ord - 'a'.ord] = true
    elsif (str[i] >= 'A' and str[i] <= 'Z') then
      presentArr[str[i].ord - 'A'.ord] = true
    end
  end

  # Store missing characters in alphabetic order.    
  res = ""

  x = -1
  for i in 0..(MAX_CHAR - 1) do
    if (presentArr[i] == false) then
      x = (i + 'a'.ord)

      if x != -1 then
        res += x.chr
      end
    end
  end

  return res
end

# Driver code
str = "The quick brown fox jumps over the dog"
#str = "The quick brown fox jumps"
puts missingChars(str)
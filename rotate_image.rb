def rotate(matrix)
  n = matrix.length
  maxtrix = transpose(matrix, n)
  reverse_coloums(matrix, n)
end

def transpose(matrix, n)
  (0...n).each do |i|
    (i...n).each do |j|
      matrix[i][j], matrix[j][i] = matrix[j][i], matrix[i][j]
    end
  end
  matrix
end

def reverse_coloums(matrix, n)
  (0...n).each do |i|
    (0...n/2).each do |j|
      matrix[i][j], matrix[i][n-j-1] = matrix[i][n-j-1], matrix[i][j]
    end
  end
  matrix
end

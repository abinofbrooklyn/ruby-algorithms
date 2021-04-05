def exist(board, word)
    board.each_index do |row|
        board[row].each_index do |col|
            if board[row][col] == word[0]
                return true if search(board, row, col, word, 0)
            end
        end
    end
    false
end

def search(board, row, col, word, count)
    return true if count == word.length
    if row < 0 || col < 0 || row > board.length-1 || col > board[row].length-1 || board[row][col] != word[count]
        return
    else
        tmp = board[row][col]
        board[row][col] = " "
        found = search(board, row+1, col, word, count+1) ||
            search(board, row-1, col, word, count+1) ||
            search(board, row, col+1, word, count+1) ||
            search(board, row, col-1, word, count+1)
        board[row][col] = tmp
        found
    en

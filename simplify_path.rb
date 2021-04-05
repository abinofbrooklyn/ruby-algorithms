def simplify_path(path)
  stack = []
  split.split('/').each do |item|
    if item == '..'
      stack.pop()
    elsif item != '' && item != '.'
      stack.push(item)
    end
  end
  '/' + stack.join('/')
end

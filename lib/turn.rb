def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


# code your #valid_move? method here
def valid_move?(board,index)
  if between?(index) && !position_taken?(board,index)
      true
  else
      false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
    if board[index]==" " || board[index]=="" || board[index]=="nill"
        false
    else
      true
    end
end
def between?(index)
   if index>=0 && index<=8
      true
   else
      false
  end
end



# code your input_to_index and move method here!
def input_to_index(value)
    index=value.to_i
    index=index-1
    return index
end
def move(board,index,value='X')
    board[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  value=gets.strip
  index=input_to_index(value)
  if valid_move?(board,index)
    move(board,index,value='X')
    display_board(board)
  else
    until valid_move?(board,index)
        puts "Invalid position reenter the value"
        value=gets.strip
        index=input_to_index(value)
    end
    move(board,index,value='X')
    display_board(board)

  end
end

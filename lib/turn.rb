def input_to_index(input)
  index = input.to_i
  index -= 1
  return index
end

#if index is valid...
def valid_move?(index, board)
  index.between?(0, 8) && !(position_taken?(board, index))
end

#if index is valid...make themove for index
def move(array, index, name = "X")
  array[index] = name
end

def position_taken?(board, answer)
  board[answer] != " "
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    answer = input_to_index(answer)
    if valid_move?(answer, board)
      move(board, answer)
      puts display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end
end



#def display_board
  #puts "   |   |   "
  #puts "-----------"
  #puts "   |   |   "
  #puts "-----------"
  #puts "   |   |   "
#end

#def turn(board)
  #puts "Please enter 1-9:"
  #end

  #def input_to_index(user_input)
  #index = user_input.to_i-1
  #end

  #def valid_move?(board, index)
    #if !position_taken?(board, index) && index.between?(0,8)
       #true
     #else
          #false
    #end
  #end
  # ode your #valid_move? method here

  #def move(board, position, char="X")
  #board[position] = char
  #end

  #def position_taken?(board, index)
    #if board[index]=="X" ||
       #board[index]=="O"
        #true
      #elsif board[index]==" " ||
            #board[index]=="" ||
            #board[index]== nil
              #false
    #end
  #end# code your #position_taken? method here!

#def display_board(board)
  #puts " #{board[0]} | #{board[1]} | #{board[2]} "
  #puts "-----------"
  #puts " #{board[3]} | #{board[4]} | #{board[5]} "
  #puts "-----------"
  #puts " #{board[6]} | #{board[7]} | #{board[8]} "
#end

# code your input_to_index and move method here!

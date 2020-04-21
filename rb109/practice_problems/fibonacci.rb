def fib_num?(num)
  fibonacci = [1, 1]
  
  until fibonacci[-1] >= num
    fibonnacci << fibonnacci[-1] + fibonnacci[-2]
  end
  
  fibonnacci.include?(num)
end

sizex = 100;
sizey = 60;
board1 = round(rand(sizey+2, sizex+2));
board2 = zeros(sizey+2, sizex+2);
steps = 100;
slowdown = 0.2;
for i = 1:steps
  alive = 0;
  for j = 2:sizey+1
    for k = 2:sizex+1      
      suma = board1(j-1, k-1) + board1(j-1, k) + board1(j-1, k+1) ...
             + board1(j, k-1) + board1(j, k+1) ...
             + board1(j+1, k-1) + board1(j+1, k) + board1(j+1, k+1);
      if board1(j, k) == 1 && (suma == 2 || suma == 3)
        board2(j, k) = 1;
        alive = alive + 1;
      elseif board1(j, k) == 0 && suma == 3
        board2(j, k) = 1;
        alive = alive + 1;
      else
        board2(j, k) = 0;
      end
    end
  end
  
  board1 = board2;
  board2 = zeros(sizey+2, sizex+2);
  
  print_board(board1(2:end-1, 2:end-1), sizex, sizey);
  title("Gra w ¿ycie")
  xlabel({sprintf("Runda: %d \n  Liczba ¿ywych komórek: %d",i,alive)});
  pause(slowdown);
end

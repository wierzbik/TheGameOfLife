function [] = print_board(board, sizex, sizey)
  imagesc(board);
  colormap(flipud(gray));
  grid on
  set(gca, 'ytick', [0.5:1:sizey-0.5]);
  set(gca, 'xtick', [0.5:1:sizex-0.5]);
  set(gca, 'YTickLabel', []);
  set(gca, 'XTickLabel', []);
end
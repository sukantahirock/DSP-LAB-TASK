x = [1, 2, 3, 1]; nx = [0:3];
h = [1, 2, 1, -1]; nh = [-1:2] ;
nyb = nx(1) + nh(1);
nye = nx(length(x)) + nh(length(h));
ny = [nyb:nye];
y = conv(x, h);

disp('Result y = ');
disp(y);
disp('ny = ');
disp(ny);

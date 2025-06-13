% Define x(n) and its time index nx
x = [1, 2, 3, 1, 2, 3];
nx = 0:(length(x)-1);

% Define h(n) and its time index nh
h = [1, 2, 3, 1, 2, 3];
nh = 0:(length(h)-1);

% Calculate the beginning and ending indices for the output signal ny
nyb = nx(1) + nh(1);
nye = nx(end) + nh(end);
ny = nyb:nye;

% Perform cyclic convolution between x(n) and h(n) to obtain the output signal y
y = cconv(x, h, length(x));

% Display the result
disp('Result y = ');
disp(y);
disp('ny = ');
disp(ny);

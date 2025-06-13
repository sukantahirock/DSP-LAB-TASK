x = [1, 2, 3, 0];
N = length(x);
n = 0:N-1;
k = 0:N-1;
WN = exp(-1i*2*pi/N);
nk = n' * k;
WNnk = WN .^ nk;
Xk_fft = x * WNnk;

disp('Xk_fft = ');
disp(Xk_fft);

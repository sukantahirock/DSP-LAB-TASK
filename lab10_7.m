% Define the input sequence
x = [1, 1, -1, -1];

% Length of the sequence
N = length(x);

% Pre-calculate twiddle factors
WN = exp(-1i*2*pi/N);

% Stage 1: Bit reversal
bit_rev_order = bitrevorder(0:N-1);
x_bit_rev = x(bit_rev_order);

% Stage 2: Butterfly operations
for L = 2:2:N
    for k = 1:L/2
        % Index calculations
        idx_even = k;
        idx_odd = k + L/2;
        
        % Butterfly operations
        even = x_bit_rev(idx_even);
        odd = x_bit_rev(idx_odd) * WN^((k-1)*(N/L));
        x_bit_rev(idx_even) = even + odd;
        x_bit_rev(idx_odd) = even - odd;
    end
end

disp('Xk_fft = ');
disp(x_bit_rev);

% Cross check with DFT
n = 0:N-1;
k = 0:N-1;
nk = n' * k;
WNnk = WN .^ (-nk);
Xk_dft = x * WNnk / N;

disp('Xk_dft = ');
disp(Xk_dft);

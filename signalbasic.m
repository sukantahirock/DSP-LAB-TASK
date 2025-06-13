% Signal specifications
duration = 2;               % Signal duration in seconds
sampling_frequency = 1000;  % Sampling frequency in Hz
signal_frequency = 100;     % Signal frequency in Hz
amplitude = 1.5;            % Signal amplitude

% Time vector
t = 0:1/sampling_frequency:duration;

% Generate the signal
x = amplitude * sin(2*pi*signal_frequency*t);

% Plot the signal
subplot(2,1,1);
plot(t, x);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal');
grid on;

% Apply DFT
X = fft(x);

% Calculate the frequency axis for plotting
f_axis = (0:length(X)-1) * (sampling_frequency / length(X));

% Plot the magnitude spectrum
subplot(2,1,2);
stem(f_axis, abs(X));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Magnitude Spectrum');
grid on;

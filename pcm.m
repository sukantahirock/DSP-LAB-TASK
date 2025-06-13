% Define analog signal parameters
Fs = 1000; % Sampling frequency (Hz)
t = 0:0.001:1; % Time vector
analog_signal = 0.2*sin(2*pi*100*t); % Sine wave with smaller amplitude (0.2) and 100 Hz frequency

% Quantization (8 bits)
num_bits = 8;
max_voltage = max(analog_signal);
min_voltage = min(analog_signal);
q_levels = 2^num_bits - 1; % Number of quantization levels
delta = (max_voltage - min_voltage) / q_levels; % Quantization step size

% PCM encoding
encoded_signal = floor((analog_signal - min_voltage) / delta) + 1;

% Simulate transmission (add noise - optional)
% noisy_encoded_signal = encoded_signal + randi([-1 1], size(encoded_signal)); % Add random noise (modify for different noise types)

% PCM decoding
decoded_voltage = (encoded_signal - 1) * delta + min_voltage;

% Optional: Interpolation for smoother signal (consider linear interpolation)
% interpolated_decoded = interp1(t, decoded_voltage, linspace(min(t), max(t), length(t)*10));

% Plot results with adjusted y-axis limits
figure(1);
subplot(3,1,1)
plot(t, analog_signal);
ylim([-0.3 0.3]); % Adjust y-axis limits to clearly see the small signal
title('Original Analog Signal');

subplot(3,1,2)
stairs(t, encoded_signal); % Use stairs for discrete values
ylim([1 q_levels]); % Adjust y-axis limits to show quantization levels (1 to 2^num_bits)
title('Encoded PCM Signal (8 bits)');

subplot(3,1,3)
plot(t, decoded_voltage);
ylim([-0.3 0.3]); % Adjust y-axis limits to clearly see the decoded signal
title('Decoded Analog Signal');

% Play original and decoded signals (optional)
% sound(analog_signal, Fs);
% sound(decoded_voltage, Fs);

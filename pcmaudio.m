% Read audio file
[audio, Fs] = audioread('bgm.wav'); 
% Select a small portion of the audio (optional)
% start_time = 0.5; % Adjust start time in seconds
% end_time = start_time + 0.1; % Adjust end time in seconds
% audio = audio(floor(Fs*start_time):floor(Fs*end_time));

% Quantization (8 bits)
num_bits = 8;
max_voltage = max(audio);
min_voltage = min(audio);
q_levels = 2^num_bits - 1; % Number of quantization levels
delta = (max_voltage - min_voltage) / q_levels; % Quantization step size

% PCM encoding
encoded_signal = floor((audio - min_voltage) / delta) + 1;

% PCM decoding
decoded_voltage = (encoded_signal - 1) * delta + min_voltage;

% Play original and decoded audio signals
sound(audio, Fs);
pause(15); % Wait for original audio to finish playing
sound(decoded_voltage, Fs);

% Optional: Plot results (modify for visual inspection)
 %figure(1);
 %subplot(2,1,1)
 %plot(t, audio); % Adjust time vector if audio selection was used
 %title('Original Audio Signal');
% 
 %subplot(2,1,2)
 %stairs(t, encoded_signal); % Adjust time vector if audio selection was used
 %title('Encoded PCM Signal (8 bits)');
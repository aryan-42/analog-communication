s = audioread('dusktilldawn.mp3');
s = s(:,1); % extract one sound track only
plot(s); % visualize the signal in time domain
Fs = 44100; % sample rate of the audio signal
N = length(s); % the number of samples of the audio signal
transform = fft(s,N); % apply Fourier transform
magTransform = abs(transform); % magnitude of the FFT
faxis = ((-0.5:1/N:0.5-1/N)*Fs).'; % frequency range of the signal
plot(faxis,fftshift(magTransform));
xlabel('Frequency (Hz)');
ylabel('Spectrum magnitude');
xlim([-1000 1000]);
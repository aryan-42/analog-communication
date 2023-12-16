clear;clc % clear command history and all variables
T = 15; % tunable parameter for the signal width
dt=.001; % increment
t=[-(10+T):dt:(10+T)]; % range of the signal
x=sign(t+T)-sign(t-T); % generate the rectangular pulse signal
plot(t,x); % visualize the signal in time domain
title('Pulse signal'); % title of the plot
xlabel('Time (msec)'); % label x-axis
ylabel('Signal f(t)'); % label y-axis
axis([-(30+T) (30+T) 0 3]); % set display range of x- and y-axis
y=fftshift(fft(x)); % apply Fourier transform and move zero frequency component to the center
N=length(y); % measure frequency range
n=-(N-1)/2:(N-1)/2; % evenly divide frequency range around zero frequency
f=sqrt(y.*conj(y)); % calculate amplitude of the frequency signal
plot(n,f); % visualize the signal in time domain
title('Frequency spectrum amplitude for the rectangular pulse');
% set title of the plot
xlabel('Frequency (Hz)'); % label x-axis
ylabel('Frequency spectrum amplitude'); % label y-axis
axis([-50 50 0 70000]); % set display range of x- and y-axis
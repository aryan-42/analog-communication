fs=8000; 
fm=20; 
fc=60; 
Am=1; 
Ac=1; 
t=[0:.1*fs]/fs; 
subplot(4,2,1); 
m1=Am*cos(2*pi*fm*t); 
plot(t,m1); 
title('Message Signal'); 
m2=Am*sin(2*pi*fm*t); 
subplot(4,2,2) 
c1=Ac*cos(2*pi*fc*t); 
plot(t,c1) 
title('Carrier Signal'); 
c2=Ac*sin(2*pi*fc*t); 
subplot(4,2,3) 
Susb=0.5*m1.*c1-0.5*m2.*c2; 
plot(t,Susb); 
title('SSB-SC Signal with USB'); 
subplot(4,2,4); 
Slsb=0.5*m1.*c1+0.5*m2.*c2; 
plot(t,Slsb); 
title('SSB-SC Signal with LSB'); 
r = Susb.*c1; 
[b, a] = butter(1,0.0001); 
mr= filter(b,a,r); 
subplot(4,2,5); 
plot(t,mr); 
title('Demodulated Signal'); 

t=0:.01:10;   %Time vector 
w = 1; %pulse width
d= w/2:w*2:10; %delay vector
y2=pulstran(t,d,'rectpuls',w); 
plot(t,y2); 
set(gca,'Ylim',[-0.1 1.1]);
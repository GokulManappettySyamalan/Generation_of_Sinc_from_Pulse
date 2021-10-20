Fs=150;
t=0:1/Fs:1;
f=20;
x=square(2*pi*f*t);
subplot(2,1,1);
plot(t,x);
xlim([0 1]);
ylim([-1.5 1.5]);
xlabel('Time')
ylabel('Amplitude');
title('Input square wave');


nfft=1024;
x=fft(x,nfft);
x=x(1:nfft/2);
mx=abs(x);
f=(0:nfft/2-1)*Fs/nfft;
subplot(2,1,2);
plot(f,mx);
xlabel('Frequency');
ylabel('Magnitude');
title('	Sinc Wave');


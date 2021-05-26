[z,p,k]=buttap(6); % especificaçoes de zeros, polos e ganho
[num,den]=zp2tf(z,p,k); % Numerador e Denominador de H(s)
disp('num='); disp(num'); % mostrar coeficientes de numerador
disp('den=');disp(den'); % mostrar coeficientes de denominador
tf(num,den); % mostrar a função de transferência H(s)
w=0:0.005:3; % vetor de frequência
H=freqs(num,den,w); % criar a função H(s)
mag=abs(H); % criar as respostas de magnitude
phase=angle(H)*180/pi; % criar a resposta de fase
subplot(2,1,1);plot(w, mag);grid; % criar o grafico de resposta de magnitude
ylabel('Magnitude') % nomear o eixo vertical
title('Butterworth Filter')
subplot(2,1,2);plot(w, phase);grid; % criar o grafico de resposta de magnitude
ylabel('Phase') % nomear o eixo vertical
title('Butterworth Filter')
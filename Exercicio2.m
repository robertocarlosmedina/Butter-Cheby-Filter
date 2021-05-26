
% Butterworth Filter
[z,p,k]=buttap(4); % zeros, polos, e ganho especificados pelo filtro
[num,den]=zp2tf(z,p,k); % numerador e denominador de H(s)
disp('num='); disp(num'); % Display dos coeficientes do numerador
disp('den=');disp(den'); % Display dos coeficientes do dnominador
tf(num,den); % imprimir a função de transfêrencia H(s)
w=0:0.005:3; % vetor frequência
H=freqs(num,den,w);
mag=abs(H); % computar a resposta em magnitude
phase=angle(H)*180/pi; % computar a resposta em fase
subplot(2,1,1);plot(w,mag);grid; % plotar a resposta em magnitude
ylabel('Magnitude')
title('Butterworth Filter')

% Chebychev Filter 
[z,p,k]=cheb1ap(4,1); % zeros, polos, e ganho especificados pelo filtro
[num,den]=zp2tf(z,p,k); % numerador e denominador de H(s)
disp('num='); disp(num'); % Display dos quoeficientes do numerador
disp('den=');disp(den'); % Display dos quoeficientes do dnominador
tf(num,den); % imprimir a função de transfêrencia H(s)
w=0:0.005:3;  % vetor frequência
H=freqs(num,den,w);
mag=abs(H); % computar a resposta em magnitude
phase=angle(H)*180/pi; %% computar a resposta em fase
subplot(2,1,2);plot(w,mag);grid;% plotar a resposta em magnitude
ylabel('Magnitude')
title('Chebyshev Filter')



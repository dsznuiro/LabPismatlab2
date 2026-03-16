kp = 1;     %Współczynnik wzmocnienia
Tb = 10;    %Wartość stałej czasowej inercji (bezwładności)
To = 2;     %Okres drgań
E = 0.4;    %Wspolczynnik tłumienia
Ti = 2;     %Stała całkowania
Td = 0.2;   %Stała różniczkowania


sys1 = tf(kp, [Tb 1]);          %Innercyjny
sys2 = tf(kp, [To^2 2*E*To 1]); %Oscylacyjny
sys3 = tf(kp, [Ti*Tb Ti 0]);    %Całkujący rzeczywisty
sys4 = tf([kp*Td 0], [Tb 1]);   %Rozniczkujacy rzeczywisty

subplot(2,2,1);
step(sys1);
title('Obiekt inercyjny');
grid on;

subplot(2,2,2);
step(sys2);
title('Obiekt oscylacyjny');
grid on;

subplot(2,2,3);
step(sys3);
title('Obiekt całkujący rzeczywisty');
grid on;

subplot(2,2,4);
step(sys4);
title('Obiekt różniczkujący rzeczywisty');
grid on;

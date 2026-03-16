kp = 1;
%Dla inercyjnego
Tb1 = 1; Tb2 = 10; Tb3 = 100;

%Dla rozniczkujacego nr.1
Td1 = 0.1; Td2 = 1; Td3 = 5;

%Dla rozniczkujacego nr.2
Tb21 = 1; Tb22 = 5; Tb23 = 10; Td21 = 0.2;

%Transmitancja dla podpunktu i
sys11 = tf(kp, [Tb1 1]);
sys12 = tf(kp, [Tb2 1]);
sys13 = tf(kp, [Tb3 1]);

%Transmitancja dla podpunktu ii
sys21 = tf([kp*Td1 0], [Tb2 1]);
sys22 = tf([kp*Td2 0], [Tb2 1]);
sys23 = tf([kp*Td3 0], [Tb2 1]);

%Transmitancja dla podpunktu iii
sys31 = tf([kp*Td21 0], [Tb21 1]);
sys32 = tf([kp*Td21 0], [Tb22 1]);
sys33 = tf([kp*Td21 0], [Tb23 1]);

figure('Name', '(i) inercyjny')
step(sys11, sys12, sys13);
title('Obiekt inercyjny Tb = 1');
legend('Tb = 1', 'Tb = 10', 'Tb = 100');
grid on;

figure('Name', '(ii) rozniczkujacy');
step(sys21, sys22, sys23);
title('Obiekt rozniczkujacy rzeczywisty Td = 0.1, Tb = 10');
legend('Td = 0.1', 'Td = 1', 'Td = 5');
grid on;

figure('Name', '(iii) rozniczkujacy');
step(sys31, sys32, sys33);
title('Obiekt rozniczkujacy rzeczywisty Tb = 1, Td = 0,2');
legend('Tb = 1', 'Tb = 5', 'Tb = 10');
grid on;

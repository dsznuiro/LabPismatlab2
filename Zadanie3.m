%Obiekt inercyjyn I rzędu
kp1 = 5;
Tb1 = 10;

sys1 = tf(kp1, [Tb1 1]);

%Obiekt oscylacyjny
kp2 = 1;
To2 = 4.7;
E = 0.2;

sys2 = tf(kp2, [To2^2 2*E*To2 1]);

%Obiekt calujacy idealny
Ti3 = 2;
kp3 = 1;

sys3 = tf(kp, [Ti 0]);

figure;
step(sys1, 80);
title('1. Obiekt inercyjny: kp=5, Tb=10');
grid on;

figure;
step(sys2, 150);
title('2. Obiekt oscylacyjny: kp=1, T0=4.7, E=0.2');
grid on;

figure;
step(sys3, 20);
title('3. Obiekt całkujący idealny: Ti=2');
grid on;
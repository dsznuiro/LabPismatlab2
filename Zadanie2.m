%Podpunkt 1
Rp = 1;
Rw = 1;

sys1 = tf(Rw, Rw+Rp);

%Podpunkt 2
L = 0.025;
R = 100;

sys2 = tf([L/R 0], [L/R 1]);

%Podpunkt 3
S = 3;

sys3 = tf(1, [S 0]);

figure;
step(sys1);
title(sprintf('Dzielnik rezystancyjny Rp=%d, Rw=%d', Rp, Rw));
ylabel('Amplituda u_{wy}(t)');
grid on;

figure;
step(sys2);
title('Charakterystyka skokowa nieobciążony czwórnik RL');
ylabel('Amplituda u_{wy}(t)');
grid on;

figure;
step(sys3);
title(sprintf('Charakterystyka skokowa zbiornik wody (S = %d)', S));
ylabel('Poziom wody h(t) [m]');
xlabel('Czas [s]');
grid on;
R = 100;
C = 0.00003;

sys = tf(1, [R*C 1]);

figure;
nyquist(sys)

figure;
bode(sys)
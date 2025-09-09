numerator = [2, 5];
denominator = conv([1, 2], [1, 3]); 
sys = tf(numerator, denominator);

figure;
step(sys);
title('Step Response');
xlabel('Time');
ylabel('Amplitude');
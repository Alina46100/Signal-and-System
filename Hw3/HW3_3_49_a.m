numerator = [2, 5];
denominator = conv([1, 2], [1, 3]); 
sys = tf(numerator, denominator);

figure;
impulse(sys);
title('Impulse Response');
xlabel('Time');
ylabel('Amplitude');
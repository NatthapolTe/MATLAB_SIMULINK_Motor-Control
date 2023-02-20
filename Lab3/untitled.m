simout1 = sim('Lab_Identification.slx');
w1 = simout1.w;
t = simout1.tout;

w2 = w1 + randn(length(w1),1);
w3 = w1 + randn(length(w1),1);
w4 = w1 + randn(length(w1),1);
w5 = w1 + randn(length(w1),1);
w6 = w1 + randn(length(w1),1);
w7 = w1 + randn(length(w1),1);
w8 = w1 + randn(length(w1),1);
w9 = w1 + randn(length(w1),1);
w10 = w1 + randn(length(w1),1);

omega = [w1 w2 w3 w4 w5 w6 w7 w8 w9 w10];
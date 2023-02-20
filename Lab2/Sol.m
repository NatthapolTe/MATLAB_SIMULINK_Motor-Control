 = tf([1 0],[10 18 4]);
t = [0:1e-6:5e-3];
u = sin(2*pi*1000*t);
[y,t] = lsim(G,u,t);
H = tf([2 3 0],[5 9 2])
[y2,t2] = lsim(H,u,t);

subplot(2,1,1)
plot(t,y)
xlabel('Time (s)'); ylabel('Current (A)')
subplot(2,1,2)
plot(t,y2)
xlabel('Time (s)'); ylabel('Voltage (A)')
saveas(gcf,'1tf.pdf')
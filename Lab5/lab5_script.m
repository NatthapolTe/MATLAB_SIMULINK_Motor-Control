w = 10; %rad/sec

tstop = 0.1;
simout = sim('Lab_Identification.slx','StartTime','0', 'StopTime', num2str(tstop),'FixedStep','1e-5');
y = simout.velocity;
u = simout.voltage;
t = simout.tout;

figure(1)
subplot(2,1,1)
plot(t,y); grid on;
ylabel('Angular Velocity'); %xlim([0 length(t)]);
subplot(2,1,2)
plot(t,u); grid on;
ylabel('Input Voltage'); %xlim([0 length(t)

figure
Tstart = 97975; Tstop = 99229;
subplot(2,1,1)
plot(t(Tstart:Tstop),y(Tstart:Tstop)); grid on;
ylabel('Angular Velocity'); %xlim([0 length(t)]);
subplot(2,1,2)
plot(t(Tstart:Tstop),u(Tstart:Tstop)); grid on;
ylabel('Input Voltage'); %xlim([0 length(t)])

% output = velocity
A = [sin(W*t(Tstart:Tstop)) cos(W*t(Tstart:Tstop))];
b = A\y(Tstart:Tstop);
phiy = atan2(b(2),b(1))*(180/pi)

% input = Armature Voltage
b1 = A\u(Tstart:Tstop);
phiu = atan2(b1(2),b1(1))*(180/pi)

phi = phiy - phiu
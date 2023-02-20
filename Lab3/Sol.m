clear;
out = sim('Lab_Identification.slx');

u = out.v;
y = out.w;
t = out.tout;
Ts = t(2)-t(1);

data = iddata(y,u,Ts);
sys = tfest(data,1)

opt = stepDataOptions('StepAmplitude',mean(u(100:end)));
[y_fit,t_fit] = step(sys,opt,t(end));

figure
plot(t,y,'g',t_fit,y_fit,'--r');
xlabel('Time (s)'); ylabel('Amplitude'); title('Step response');
legend('Actual response', 'Estimated response')
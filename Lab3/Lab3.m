%% Collecting data
w = out.w;
u = out.Input;
t = out.tout;

%% Find index
plot(w)

%% Fitting curve
figure
plot(t(439:end)-t(439),w(439:end))

td = t(439); %Time delay is read from graph
stepcurve = 'a*(1-exp(-x/b))'; % a = DCgain * 220, b = time constant
f1 = fit(t(439:end)-t(439),w(439:end),stepcurve,'Start', [200 0.09]);

K = f1.a/220
tau = f1.b
%% transfer function
G = tf(K,[tau 1], 'InputDelay', td);

yhat =step(G,t)*220;
figure
plot(t,w); hold on;
plot(t,yhat);

%% Fitting error
fitting = 100*(1-(norm(w-yhat)/norm(w - mean(w))))

%% Test set On input sine
w_sine = out.w;
u_sine = out.Input;
t = out.tout;

yhat_sine = lsim(G,u_sine,t);
figure
plot(t , w_sine); hold on;
plot(t,yhat_sine);
fitting = 100*(1-norm(w_sine-yhat_sine)/norm(w_sine - mean(w_sine)))
%%
theta1 = out.Theta;

figure(1)
plot(theta1)
xlabel('Time (s)'); ylabel('Angle (rad)');
hold on
%% 
theta2 = out.Theta;

plot(theta2)
%%
theta3 = out.Theta;
plot(theta3)
legend('b_1 = 1, b_2 = 2','b_1 = 100, b_2 = 2','b_1 = 1, b_2 = 50')
saveas(gcf,'Gr.pdf')